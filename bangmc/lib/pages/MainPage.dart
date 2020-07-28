import 'package:flutter/material.dart';
import './NaviPage.dart';

class MainPage extends StatelessWidget {
  int _NaviItemIdx=0;
  @override
  Widget build(BuildContext context) {
    return NaviPage();
  }
}

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text("Main page"),
//       ),
      
      
//     );
//   }
// }