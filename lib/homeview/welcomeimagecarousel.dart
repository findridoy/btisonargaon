import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          Image.asset("assets/carouselimage/img1.jpg"),
          Image.asset("assets/carouselimage/img2.jpg"),
          Image.asset("assets/carouselimage/img3.jpg"),
          Image.asset("assets/carouselimage/img4.jpg"),
          Image.asset("assets/carouselimage/img5.jpg"),
          Image.asset("assets/carouselimage/img6.jpg"),
        ],
      ),
    );
  }
}
