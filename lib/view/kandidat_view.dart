import 'package:flutter/material.dart';
import 'package:e_voting_umm/component/list_kandidat.dart';
import 'package:e_voting_umm/dummy_data.dart';

class KandidatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final title = route['title'];

    final kandidatLists = KANDIDAT_DUMMY_DATA.where((kandidat) {
      return kandidat.category == id;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Kandidat"),
      ),
      body: GridView(
          padding: EdgeInsets.all(15.0),
          // children: KANDIDAT_DUMMY_DATA
          //     .map((kat) => ListKandidat(
          //         kat.id, kat.name, kat.partai, kat.jabatan, kat.image))
          //     .toList(),
          children: kandidatLists
              .map((kat) => ListKandidat(
                  kat.id, kat.name, kat.partai, kat.jabatan, kat.image))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.75,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3)),
      // body: GridView.builder(
      //   itemCount: kandidatLists.length,
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200,
      //       childAspectRatio: 0.75,
      //       crossAxisSpacing: 3,
      //       mainAxisSpacing: 3),
      //   itemBuilder: (context, index) {
      //     return KandidatView();
      //   },
      // ),
    );
  }
}
