import 'package:flutter/material.dart';
import '../test.dart';
import '../../common/common.dart';

class CategoryCard extends StatefulWidget {
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

class HomeRecommendPage extends StatefulWidget {
  @override
  _HomeRecommendPageState createState() => _HomeRecommendPageState();
}

class _HomeRecommendPageState extends State<HomeRecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: getGlobalColorBackgroundLv2ContentPage(context),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          // itemExtent: 50.0,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                GroupTab("秒杀"),
                GroupTab("推荐单品"),
                GroupTab("推荐套餐"),
              ],
            );
          }),
    );
    // return ListView.builder(
    //     scrollDirection: Axis.vertical,
    //     itemCount: 1,
    //     // itemExtent: 50.0,
    //     itemBuilder: (BuildContext context,int index){
    //       return Column(
    //         children: <Widget>[
    //           GroupTab("秒杀"),
    //           GroupTab("推荐单品"),
    //           GroupTab("推荐套餐"),

    //         ],
    //       );
    //     }
    //   );

    // return Container(
    //   child: ListView.builder(
    //     scrollDirection: Axis.vertical,
    //     itemCount: 20,
    //     itemExtent: 50.0,
    //     itemBuilder: (BuildContext context,int index){
    //     return ListTile(
    //       title: index>0?Text("title1 $index"): Text("title $index"),
    //       leading: Icon(Icons.keyboard),
    //       subtitle: Text("subtitle $index"),
    //       trailing: Icon(Icons.keyboard_arrow_right),
    //       isThreeLine: false,
    //       dense: true,
    //       contentPadding: EdgeInsets.all(10.0),
    //       enabled: true,
    //       onTap: (){
    //         print("点击 $index");
    //       },
    //       onLongPress: (){
    //         print("长按 $index");
    //       },
    //     );
    //   }),

    // );
  }
}
