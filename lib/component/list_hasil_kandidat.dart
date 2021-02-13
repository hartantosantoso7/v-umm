import 'package:e_voting_umm/model/kandidat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListHasilKandidat extends StatelessWidget {
  final String id;
  final String name;
  final String partai;
  final String jabatan;
  final double suara;
  // final double suara2;

  ListHasilKandidat(
    this.id,
    this.name,
    this.partai,
    this.jabatan,
    this.suara,
  );

  @override
  _data(double suara) {
    double persen = (suara / pemilih) * 100;
    return <CircularStackEntry>[
      new CircularStackEntry(<CircularSegmentEntry>[
        // new CircularSegmentEntry(700.0, Color(0xff4285F4), rankKey: 'Q1'),
        new CircularSegmentEntry(persen, Color(0xFFD81B60), rankKey: 'Q2'),
        new CircularSegmentEntry((100 - persen), Color(0xFFF8BBD0),
            rankKey: 'Q3'),
        // new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4')
      ], rankKey: "Quaterly Profits"),
    ];
  }

  // _data(double value1, double value2) {
  // List<CircularStackEntry> circularData = <CircularStackEntry>[
  //   new CircularStackEntry(<CircularSegmentEntry>[
  //     // new CircularSegmentEntry(700.0, Color(0xff4285F4), rankKey: 'Q1'),
  //     new CircularSegmentEntry(value1, Color(0xFFF8BBD0), rankKey: 'Q2'),
  //     new CircularSegmentEntry(value2, Color(0xFFD81B60), rankKey: 'Q3'),
  //     // new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4')
  //   ], rankKey: "Quaterly Profits"),
  // ];
  // }

  Material myTextItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'this text $name',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Material myCircularItems(double suara) {
    return Material(
        color: Colors.white,
        elevation: 14.0,
        borderRadius: BorderRadius.circular(24.0),
        shadowColor: Color(0x802196F3),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '${(suara / pemilih) * 100} %',
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: AnimatedCircularChart(
                            size: const Size(100.0, 100.0),
                            initialChartData: _data(suara),
                            chartType: CircularChartType.Radial,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            partai,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            jabatan,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: myCircularItems(suara),
      ),
    );
    // return StaggeredGridView.count(
    //   primary: false,
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   crossAxisCount: 4,
    //   crossAxisSpacing: 12.0,
    //   mainAxisSpacing: 12.0,
    //   children: <Widget>[
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: myCircularItems("Quarterly Profits", "68.7M"),
    //     ),
    //   ],
    //   staggeredTiles: [
    //     StaggeredTile.extent(4, 250.0),
    //   ],
    // );
  }
}
