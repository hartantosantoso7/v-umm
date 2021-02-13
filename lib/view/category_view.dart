import 'package:flutter/material.dart';
import 'package:e_voting_umm/dummy_data.dart';
import 'package:e_voting_umm/component/list_category.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: CATEGORIES_DUMMY_DATA
            .map((cat) =>
                ListKandidat(cat.id, cat.title, cat.description, cat.image))
            .toList(),
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 300,
        //     childAspectRatio: 1,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 20),
      ),
    );
  }
}
