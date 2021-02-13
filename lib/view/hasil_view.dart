import 'package:flutter/material.dart';
import 'package:e_voting_umm/dummy_data.dart';
import 'package:e_voting_umm/component/list_hasil.dart';

class HasilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: CATEGORIES_DUMMY_DATA
            .map((cat) =>
                ListHasil(cat.id, cat.title, cat.description, cat.image))
            .toList(),
      ),
    );
  }
}
