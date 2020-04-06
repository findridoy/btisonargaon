import 'package:btisonargaon/utils/primary_theme.dart';
import 'package:flutter/material.dart';
import 'ui/views/home_view.dart';

void main() {
  runApp(BTIweb());
}

class BTIweb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'বাহাউল হক টেকনিক্যাল ইন্সটিটিউট - Bahaul Huq Technical Institute',
      theme: primaryTheme(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
