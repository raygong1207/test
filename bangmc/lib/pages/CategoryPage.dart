import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // return Text("分类页面",
    // style: TextStyle(
    // decoration: TextDecoration.none,
    // fontSize: 10.0,

    // )
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child:Text("body"),
      ),
    );
  }
}