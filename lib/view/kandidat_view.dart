import 'package:flutter/material.dart';
import 'package:e_voting_umm/dummy_data.dart';
import 'package:e_voting_umm/component/list_category.dart';

class KandidatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final title = route['title'];

    final kandidatList = CATEGORIES_DUMMY_DATA.where((kandidat) {
      return kandidat.title == id;
    }).toList();
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (ctx, index) {
        return ListKandidat(kandidatList[index].id, kandidatList[index].title,
            kandidatList[index].description, kandidatList[index].image);
      },
      itemCount: kandidatList.length,
    ));
  }
}
