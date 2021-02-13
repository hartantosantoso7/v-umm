import 'package:flutter/foundation.dart';

const int pemilih = 500;

class Kandidat {
  final String id;
  final String name;
  final String partai;
  final String jabatan;
  final String image;
  final String category;
  final double suara; //(jumlah suara yang didapat/total pemilih)*100%

  const Kandidat(
      {@required this.id,
      @required this.name,
      @required this.partai,
      @required this.jabatan,
      @required this.image,
      @required this.category,
      @required this.suara});
}
