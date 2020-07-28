import 'package:bangmc/pages/MePage.dart';
import 'package:flutter/material.dart';
import 'NaviPage.dart';
import '../pages/test.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SearchBar(),
        ),
        Text("提交"),
        // ClipOval(
        //   child: Image.network("https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2798216820,1841993320&fm=26&gp=0.jpg",
        //   fit: BoxFit.cover),
        // ),
        

      ],
      // SearchBar(),

    );
  }
}