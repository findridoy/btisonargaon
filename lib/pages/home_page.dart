import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
            IlloraLaylaSumon(),
            LaylaCard(),
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
    "assets/welcome_image/img2.jpg",
    "assets/welcome_image/img3.jpg",
    "assets/welcome_image/img1.jpg",
    "assets/welcome_image/img4.jpg",
    "assets/welcome_image/img5.jpg",
    "assets/welcome_image/img6.jpg",
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

class IlloraLaylaSumon extends StatelessWidget {
  final List<Widget> threehead = [
    Text("data"),
    Text("data"),
    Text("data"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: threehead.map((person) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: person,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class LaylaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 80),
            width: 400,
            height: 300,
            color: Color.fromRGBO(45, 78, 120, 100),
            child: Column(
              children: <Widget>[
                Text("Layla Afroz"),
                Text("Sineor Executive, BSF")
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 100,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(78, 45, 12, 100),
                    blurRadius: 10,
                    offset: Offset(0, 12),
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://picsum.photos/200",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
