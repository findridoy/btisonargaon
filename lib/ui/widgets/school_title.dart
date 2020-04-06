import 'package:flutter/material.dart';

class LogoTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        color: Color(0xff128C9D),
        child: Row(
          children: <Widget>[
            Logo(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SchoolTitle(),
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      width: 50,
      height: 50,
      child: Image.asset("assets/btilogo.png"),
    );
  }
}

class SchoolTitle extends StatelessWidget {
  final double size;
  SchoolTitle({this.size});
  @override
  Widget build(BuildContext context) {
    return Text(
      "বাহাউল হক টেকনিক্যাল ইন্সটিটিউট",
      style: TextStyle(
          fontSize: size, fontFamily: 'Galada', color: Color(0xffffffff)),
    );
  }
}
