import 'package:flutter/material.dart';

class JadwalPage extends StatefulWidget {
  @override
  _JadwalPageState createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  List<Step> _steps;
  int _current;

  @override
  void initState() {
    _current = 0;
    _steps = <Step>[
      new Step(
          title: Text("Jadwal Kampanye"),
          content: Text("GKB 1 Lt 3, 14 Februari 2020, Pkl.13:00"),
          isActive: true),
      new Step(
          title: Text("Jadwal Pencoblosan"),
          content: Text("GKB 1 Lt 3, 18 Februari 2020, Pkl.13:00"),
          isActive: true),
      new Step(
          title: Text("Jadwal Pengumuman"),
          content: Text("GKB 1 Lt 3, 29 Februari 2020, Pkl.13:00"),
          isActive: true)
    ];
  }

  void _stepContinue() {
    setState(() {
      _current++;
      if (_current >= _steps.length) _current = _steps.length - 1;
    });
  }

  void _stepCancel() {
    setState(() {
      _current--;
      if (_current < 0) _current = 0;
    });
  }

  void _stepTap(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Center(
          child: Stepper(
        steps: _steps,
        type: StepperType.vertical,
        currentStep: _current,
        onStepCancel: _stepCancel,
        onStepContinue: _stepContinue,
        onStepTapped: _stepTap,
      )),
    );
  }
}
