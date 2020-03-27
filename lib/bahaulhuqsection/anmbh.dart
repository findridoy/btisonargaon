import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Anmbh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red, Colors.blue],
        ),
      ),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Image.asset(
                'assets/anmbh.jpg',
                width: 300,
                fit: BoxFit.cover,
              ),
              Container(
                child: FittedBox(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "প্রতিষ্ঠাতা",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        "আ.ন.ম. বাহাউল হক",
                        style: TextStyle(fontSize: 40, height: 1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
              child: Carousel(
                showIndicator: false,
                images: [
                  Text(
                    "\"আমরা শুধুই শিখতে আসিনি, আমরা জীবন যুদ্ধ্য করতে এসেছি।\"",
                  ),
                  Text(
                    "\"রবীন্দ্রনাথ আমার গুরু, আর আমি রবীন্দ্রনাথের\"",
                  ),
                  Text(
                    "\"সুধুই পড়ালেখা নয় কাজও শিখতে হবে\"",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
