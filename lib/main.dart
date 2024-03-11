import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'tabs/tab1.dart';
import 'tabs/tab2.dart';
import 'tabs/tab3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Le Relais'),
      ),
      body: TabBarView(
        children: [
          Tab1(),
          Tab2(),
          Tab3(),
        ],
      ),
      bottomNavigationBar: GFTabBar(
        tabBarColor: Colors.white,
        length: 3,
        controller: DefaultTabController.of(context),
        tabs: [
          Tab(
            icon: Icon(Icons.local_shipping),
            child: Text("Don"),
          ),
          Tab(
            icon: Icon(Icons.business),
            child: Text("Collecte"),
          ),
          Tab(
            icon: Icon(Icons.explore),
            child: Text("Le Relais"),
          ),
        ],
      ),
    );
  }
}
