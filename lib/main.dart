import 'package:e_voting_umm/view/kandidat_view.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:e_voting_umm/view/splashscreen_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    // HomePage.tag: (context) => HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-voting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: SplashScreenPage(),
      routes: {'/kandidat': (ctx) => KandidatView()},
    );
  }
}
