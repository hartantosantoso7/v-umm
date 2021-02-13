import 'package:flutter/material.dart';
import 'package:e_voting_umm/dummy_data.dart';
import 'package:e_voting_umm/component/list_hasil_kandidat.dart';

class HasilKandidatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final title = route['title'];

    final hasilKandidat = KANDIDAT_DUMMY_DATA.where((hasilKandidat) {
      return hasilKandidat.category == id;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Kandidat"),
      ),
      body: ListView(
        children: hasilKandidat
            .map((kat) => ListHasilKandidat(
                kat.id, kat.name, kat.partai, kat.jabatan, kat.suara))
            .toList(),
      ),
    );
  }
}
