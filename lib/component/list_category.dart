import 'package:flutter/material.dart';
import '../dummy_data.dart';

class ListKandidat extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String image;

  ListKandidat(this.id, this.title, this.description, this.image);

  void goToNewScreen(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    // return InkWell(
    //   onTap: () => goToNewScreen(context),
    //   highlightColor: Colors.white.withAlpha(30),
    //   splashColor: Colors.white.withAlpha(20),
    //   child: Card(
    //       elevation: 5,
    //       child: Center(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: <Widget>[
    //             // bagian pertama akan menampilkan gambar
    //             Padding(
    //               padding: EdgeInsets.only(top: 10.0),
    //               child: Image.asset(
    //                 image,
    //                 height: 65,
    //                 width: double.infinity,
    //               ),
    //             ),
    //             SizedBox(
    //               height: 4,
    //             ),
    //             Center(
    //               child: Text(
    //                 title,
    //                 style: Theme.of(context).textTheme.title,
    //               ),
    //             )
    //           ],
    //         ),
    //       )),
    // );
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: ListTile(
          leading: Image.asset(image),
          title: Text(title),
          subtitle: Text(description),
        ),
      ),
    );
  }
}
