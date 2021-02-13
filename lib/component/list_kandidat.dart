import 'package:flutter/material.dart';

class ListKandidat extends StatelessWidget {
  final String id;
  final String name;
  final String partai;
  final String jabatan;
  final String image;

  ListKandidat(this.id, this.name, this.partai, this.jabatan, this.image);
  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
      Container(
        height: 350.0,
        width: 250.0,
        child: InkWell(
          highlightColor: Colors.white.withAlpha(30),
          splashColor: Colors.white.withAlpha(20),
          child: Card(
            margin: EdgeInsets.all(10.0),
            elevation: 5.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.network(
                      image,
                      height: 100.0,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Text(name),
                        Text(partai),
                        Text(jabatan),
                        RaisedButton(
                          onPressed: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text("Pemberitahuan"),
                                      content: Text(
                                          "Apakah anda yakin memilih kandidat ini?"),
                                      actions: <Widget>[
                                        FlatButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Batal'),
                                          child: Text('Batal'),
                                        ),
                                        FlatButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Yakin'),
                                          child: Text('Yakin'),
                                        )
                                      ],
                                    ));
                          },
                          child: Text("Pilih"),
                          textColor: Colors.white,
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
