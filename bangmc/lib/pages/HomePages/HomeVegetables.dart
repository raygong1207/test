import 'package:flutter/material.dart';
import '../../common/common_widgets.dart';
import '../../common/common_cfg.dart';

// class CategoryCard extends StatefulWidget {
//   @override
//   _CategoryCardState createState() => _CategoryCardState();
// }

// class _CategoryCardState extends State<CategoryCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(

//     );
//   }
// }

class HomeVegetablesPage extends StatefulWidget {
  @override
  _HomeVegetablesPageState createState() => _HomeVegetablesPageState();
}

class _HomeVegetablesPageState extends State<HomeVegetablesPage> {
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
                GroupTab("蔬菜1"),
                GroupTab("蔬菜2"),
                GroupTab("蔬菜3"),
                GroupTab("蔬菜4"),
              ],
            );
          }),
    );
    // return Column(
    //   children: <Widget>[
    //     TestPage4(),
    //     TestPage4(),
    //     TestPage4(),
    //   ],

    // );
  }
}
