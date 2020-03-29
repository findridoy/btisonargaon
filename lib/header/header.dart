import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/btilogo.svg",
            width: 60,
            height: 60,
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text("বাহাউল হক টেকনিক্যাল ইন্সটিটিউট"),
              Text("Bahaul Huq Technical Institute"),
              Text("স্থাপিতঃ ২০১৬"),
            ],
          ),
        ),
      ],
    );
  }
}
