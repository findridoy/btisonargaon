import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class PersonInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.blue[400],
        elevation: 6,
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
            ),
            Positioned(
              left: 40,
              top: -20,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      color: Colors.red,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/anmbh.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(34, 34, 34, 100),
              Color.fromRGBO(233, 345, 65, 100)
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: RoundAvatar(),
                ),
                SizedBox(
                  height: 20,
                ),
                Info(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GFCard(
        boxFit: BoxFit.cover,
        content: Column(
          children: <Widget>[
            RoundAvatar(),
            Info(),
          ],
        ),
      ),
    );
  }
}

class RoundAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFAvatar(
      backgroundImage: NetworkImage("https://picsum.photos/200"),
      shape: GFAvatarShape.circle,
      radius: 70,
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: <Widget>[
          Text(
            "Layla Afroz",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text("Sr. Executive Officer"),
          Text(
            "Bahaul Huq Sonargoan Foundation",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
