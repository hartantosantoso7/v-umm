import 'package:e_voting_umm/dummy_data.dart';
import 'package:flutter/material.dart';

class ListHasil extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String image;

  ListHasil(this.id, this.title, this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: ListTile(
          leading: Image.asset(image),
          title: Text(title),
          subtitle: Text(description),
        ),
      ),
    );
  }
}
