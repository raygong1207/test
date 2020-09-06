import 'package:bangmc/pages/MePage.dart';
import 'package:flutter/material.dart';
import 'NaviPage.dart';
import '../common/common_widgets.dart';
import '../common/common_cfg.dart';

// Widget _MorePageStateBody(
//     _MorePageState thisClass, context, String title, String type) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: <Widget>[
//       Padding(
//         padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//         child: MorePageBody(title, type),
//       ),
//       Text("提交"),
//       // ClipOval(
//       //   child: Image.network("https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2798216820,1841993320&fm=26&gp=0.jpg",
//       //   fit: BoxFit.cover),
//       // ),
//     ],
//     // MoreBar(),
//   );
// }

class MorePage extends StatefulWidget {
  String barTitle = "更多";
  final Map arguments;
  // MorePage({this.arguments});
  MorePage({Key key, this.arguments}) : super(key: key);
  @override
  _MorePageState createState() => _MorePageState(arguments: arguments);
}

class _MorePageState extends State<MorePage> {
  String barTitle = "更多";
  Map arguments;
  _MorePageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text(this.arguments['title']),
      ),
      body: Center(
          child:
              MorePageBody(this.arguments['title'], this.arguments['title'])),
      // body: Center(child: MorePageBody(this.barTitle, this.barTitle)),
      // _MorePageStateBody(this, context, this.barTitle, this.barTitle)),
    );
  }
}
