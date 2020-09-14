import 'package:bangmc/pages/MePage.dart';
import 'package:flutter/material.dart';
import 'NaviPage.dart';
import '../common/common_widgets.dart';
import '../common/common_cfg.dart';
import '../common/common_api.dart';
import '../common/goods.dart';

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

class MoreGoodstItem extends StatefulWidget {
  Goods goods;
  // ShoppingCart cart;
  var thisclass;
  MoreGoodstItem(this.thisclass, this.goods);
  @override
  _MoreGoodstItemState createState() =>
      _MoreGoodstItemState(thisclass: this.thisclass, goods: this.goods);
}

class _MoreGoodstItemState extends State<MoreGoodstItem> {
  bool selectVal = true;
  String classTypeSecond = "肉类";
  // ShoppingCart cart;
  Goods goods;
  var thisclass;
  _MoreGoodstItemState({this.thisclass, this.goods});
  @override
  Widget build(BuildContext context) {
    // List<Goods> datas = getDataList(this.classTypeSecond);
    return Container(
      height: 150.0,
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 0,
                  child: Container(
                    height: 150.0,
                    color: Colors.white,
                    child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 1)),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: 500, color: Colors.white,
                    // child: Text("商品图片")
                    //         child:  DecorationImage(
                    // image: AssetImage(item.goodsPicsPath[0]), fit: BoxFit.cover),
                    child: Image.asset(this.goods.goodsPicsPath[0]),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                      height: 500,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Text("Item Title"),
                          // Text("Item simple introduce"),
                          Expanded(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                                    child: Text(this.goods.goodsTitle),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Text(this.goods.goodsDesc),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Text(this.goods.goodsFlags[0]),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                                this.goods.getGoodsPrice()),
                                          ),
                                          // FlatButton(
                                          //   onPressed: null,
                                          //   child: Text("-"),
                                          // ),
                                          // Expanded(
                                          //   flex: 1,
                                          //   child: Text(""),
                                          // ),

                                          Expanded(
                                            flex: 3,
                                            // child: CounterEditWidget(),
                                            child: InkWell(
                                              splashColor: Colors.red,
                                              highlightColor: Colors.black,
                                              radius: 2,
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              onTap: () {
                                                print("加入购物车");
                                                // toast("加入购物车");
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    // borderRadius:
                                                    // BorderRadius.circular(
                                                    //     50),
                                                    color: Colors.green,
                                                    shape: BoxShape.circle),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),

                                          // Text("1"),
                                          // Text("data")
                                        ],
                                      ))),
                            ],
                          ))
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

Widget MorePageBody(_MorePageState thisClass, List<Goods> goodsData,
    String title, String type) {
  String classTitle = title;
  String classTypeSecond = type;

  // List<Goods> datas = getDataList(classTypeSecond);
  print("bb=$title");
  return Column(children: <Widget>[
    Expanded(
        flex: 0,
        child: Container(
            decoration: new BoxDecoration(
              //背景
              color: Colors.white,
              gradient: LinearGradient(colors: [
                Color(0xFFFFFFFF),
                Color(0xDDDDDDDD),
                Color(0xAAAAAAAA)
                // Color(0x44004400),
                // Color(0x88008800),
                // Color(0xFF00DD00),
                // Color(0xFF00FF00),
                // Color(0x88008800),
                // Color(0x44004400),
              ], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
              //设置四周圆角 角度
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              // borderRadius: BorderRadius.only()
              //设置四周边框
              // border: new Border.all(width: 1, color: Colors.red),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Text("全部商品（0 ）"),
                // Text("已选商品（0）"),
              ],
            ))),
    Expanded(
        flex: 10,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              // itemExtent: 50.0,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  // children:goodsList.map((f) => Text("f")).toList(),

                  // children: goodsList.map((f) {
                  //   return Text("f");
                  // }).toList(),

                  children: goodsData.map((f) {
                    return MoreGoodstItem(thisClass, f);
                    // print("object");
                    // Text("data");
                  }).toList(),

                  // children: <Widget>[
                  //   //   // GroupTab("搜索1"),
                  //   //   // GroupTab("搜索2"),
                  //   //   // int i =0;

                  // BasketItem(cart, cart.goods[0]),
                  // BasketItem(goodsList[1]),
                  //   //   BasketItem(goodsList[2]),
                  //   //   BasketItem(goodsList[3]),
                  //   //   BasketItem(goodsList[4]),
                  //   //   BasketItem(goodsList[5]),
                  //   //   BasketItem(goodsList[6]),
                  // ],
                );
              }),
        )),
    // Expanded(
    //   flex: 0,
    //   child: Padding(
    //     padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
    //     child: Container(
    //         decoration: new BoxDecoration(
    //           //背景
    //           color: Colors.white,
    //           gradient: LinearGradient(colors: [
    //             Color(0xFFFFFFFF),
    //             Color(0xDDDDDDDD),
    //             Color(0xAAAAAAAA)
    //           ], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
    //           //设置四周圆角 角度
    //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //           // borderRadius: BorderRadius.only()
    //           //设置四周边框
    //           // border: new Border.all(width: 1, color: Colors.red),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //             Expanded(
    //                 flex: 1,
    //                 child: Container(
    //                   height: 500.0,
    //                   // color: Colors.white,
    //                   child: null,
    //                 )),
    //             Expanded(
    //               flex: 2,
    //               child: Text("全选（0）"),
    //             ),
    //             Expanded(
    //               flex: 3,
    //               child: Text("总价：0"),
    //             ),
    //             Expanded(
    //               flex: 3,
    //               child: FlatButton(onPressed: null, child: Text("结算")),
    //             ),
    //           ],
    //         )),
    //   ),
    // ),
  ]);
}

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
  List<Goods> datas;
  _MorePageState({this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas = getDataList(this.arguments['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text(this.arguments['title']),
      ),
      body: Center(
          child: MorePageBody(
              this, datas, this.arguments['title'], this.arguments['title'])),
      // body: Center(child: MorePageBody(this.barTitle, this.barTitle)),
      // _MorePageStateBody(this, context, this.barTitle, this.barTitle)),
    );
  }
}
