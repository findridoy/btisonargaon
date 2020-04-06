import 'package:btisonargaon/ui/widgets/anmbh.dart';
import 'package:btisonargaon/ui/widgets/person_info_card.dart';
import 'package:btisonargaon/ui/widgets/school_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/getflutter.dart' as gf;

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: gf.GFDrawer(
        child: ListView(),
      ),
      body: ListView(
        children: <Widget>[
          LogoTitle(),
          //PersonInfoCard(),
          //Card3(),
          // Row(
          //   children: <Widget>[
          //     //SvgPicture.asset("assets/btilogo.svg"),
          //     Text("বাহাউল হক টেকনিক্যাল ইন্সটিটিউট"),
          //   ],
          // ),
          SizedBox(
            height: 20,
          ),
          // gf.GFCarousel(
          //   items: <Widget>[
          //     Image.asset("assets/welcome_image/img1.jpg"),
          //     Image.asset("assets/welcome_image/img2.jpg"),
          //     Image.asset("assets/welcome_image/img3.jpg"),
          //     Image.asset("assets/welcome_image/img4.jpg"),
          //     Image.asset("assets/welcome_image/img5.jpg"),
          //     Image.asset("assets/welcome_image/img6.jpg"),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          //Anmbh(),
        ],
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(onPressed: () {
          Scaffold.of(context).openEndDrawer();
        });
      }),
    );
  }
}
