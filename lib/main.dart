import 'package:btisonargaon/bahaulhuqsection/anmbh.dart';
import 'package:btisonargaon/header/header.dart';
import 'package:btisonargaon/homeview/welcomeimagecarousel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeView(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(),
              ImageCarousel(),
              //chairman sir's section
              Anmbh(),
            ],
          ),
        ),
      ),
    );
  }
}
