import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          MenuButton(),
        ],
        automaticallyImplyLeading: false,
      ),
      endDrawer: Container(
        width: 50,
        color: Colors.amber,
        child: ListView(
          children: <Widget>[
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            WelcomeCarousel(),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openEndDrawer(),
      ),
    );
  }
}

class WelcomeCarousel extends StatelessWidget {
  final List<String> imageList = [
    "assets/welcome_image/img1",
    "assets/welcome_image/img2",
    "assets/welcome_image/img3",
    "assets/welcome_image/img4",
    "assets/welcome_image/img5",
    "assets/welcome_image/img6",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFCarousel(
        items: imageList.map((img) {
          return Container(
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: 1000,
            ),
          );
        }).toList(),
      ),
    );
  }
}
