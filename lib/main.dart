import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(BTIweb());
}

class BTIweb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'বাহাউল হক টেকনিক্যাল ইন্সটিটিউট - Bahaul Huq Technical Institute',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey"),
        ),
        body: HomePage(),
      ),
    );
  }
}

// class HomeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Header(),
//               ImageCarousel(),
//               //chairman sir's section
//               Anmbh(),
//               //navigation menu
//               NavFloatMenu(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
