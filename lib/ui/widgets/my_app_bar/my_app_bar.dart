import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => MobileAppBarPortrait(),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(20);
}

class MobileAppBarPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: null,
      title: Center(
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network("https://via.placeholder.com/60"),
              Text("bahaul kdjfei kdsjf lkjdf")
            ],
          ),
        ),
      ),
      actions: <Widget>[
        //MenuButton(),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
