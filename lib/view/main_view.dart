import 'package:flutter/material.dart';
import 'category_view.dart';
import 'hasil_view.dart';
import 'jadwal_view.dart';
import 'profile_view.dart';
import '../model/category.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "http://www.umm.ac.id/themes/umm9/images/logo.png",
          fit: BoxFit.contain,
        ),
        centerTitle: true,
        title: Text("E-voting"),
        bottom: _builtTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CategoryView(),
          HasilPage(),
          JadwalPage(),
          ProfilePage(),
        ],
      ),
    );
  }

  TabBar _builtTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
          text: "Kandidat",
        ),
        Tab(
          icon: Icon(Icons.pie_chart),
          text: "Hasil",
        ),
        Tab(
          icon: Icon(Icons.schedule),
          text: "Jadwal",
        ),
        Tab(
          icon: Icon(Icons.people),
          text: "Profile",
        )
      ],
    );
  }
}
