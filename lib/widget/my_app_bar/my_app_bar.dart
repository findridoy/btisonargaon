import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _Title(),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset("assets/btilogo.svg"),
        Text("Bahul Huq Technical Institute"),
      ],
    );
  }
}
