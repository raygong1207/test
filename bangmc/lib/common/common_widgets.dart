import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/common_cfg.dart';
// import 'package:flutterautotext/flutterautotext.dart';

List itemPics = [
  "lib/res/haixian/haixian_longxiao01.jpg",
  "lib/res/shucai/shucai_xilanhua01.jpg",
  "lib/res/shuiguo/shuiguo_mugua01.jpg",
  "lib/res/shushi/shushi_lurou01.jpg",
  "lib/res/yinliao/yinliao_pijiu_jiashibo01.jpg",
];

List<ItemKeys> getDataList() {
  List<ItemKeys> list = [];
  double price = 0.0;
  ItemKeys item = new ItemKeys();
  int num1 = 0;
  for (int i = 0; i < 10; i++) {
    item.itemTitle = "商品标题";
    item.itemDesc = "商品描述";
    item.itemFlag = "商品标签";
    item.itemPrice = "98.00";
    item.itemPriceOrig = "9999.00";
    num1 = getRandom(0, 100);
    print(num1);
    item.itemTitle = item.itemTitle + num1.toString();
    price = double.parse(item.itemPrice);
    price = price + num1;
    item.itemPrice = price.toString();
    list.add(item);
  }
  return list;
}

int getRandom(int min, int max) {
  var rand = new Random();
  return rand.nextInt(max);
}

class ItemKeys {
  String itemTitle;
  String itemDesc;
  String itemFlag;
  String itemPrice;
  String itemPriceOrig;
}

List<Widget> getWidgetList(BuildContext context) {
  return getDataList().map((item) => getItemContainer(context, item)).toList();
}

Widget getItemContainer(BuildContext context, ItemKeys item) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

    // child: Container(
    //     // color: getGlobalColorBackgroundLv4ItemContentPage(context),
    //     // color: Colors.blue,
    //     height: 10,
    //     alignment: Alignment.bottomCenter,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(image: AssetImage(itemPics[getRandom(0, 4)])),
    //       color: Colors.lightGreen[50],
    //       // color: Colors.getGlobalColorBackgroundLv4ItemContentPage(context),
    //       // image:Image.asset(
    //       //     itemPics[getRandom(0, 4)],
    //       //     fit: BoxFit.scaleDown,
    //       //   ),
    //     ),
    //     child: Column(
    //       children: <Widget>[
    //         Text(
    //           item.itemTitle,
    //           style: TextStyle(color: Colors.green, fontSize: 10),
    //         ),
    //       ],
    //     )),
    child: genItemContents2(context, 1, item),
  );
}

Widget genItemContents2(BuildContext context, int flex, ItemKeys item) {
  return Container(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        // alignment: new FractionalOffset(1.0, 0.0),
        // color: getGlobalColorBackgroundLv4ItemContentPage(context),
        // color: Colors.blue,
        height: 100,
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(itemPics[getRandom(0, 4)]), fit: BoxFit.cover),
          color: Colors.lightGreen[50],
          // color: Colors.getGlobalColorBackgroundLv4ItemContentPage(context),
          // image:Image.asset(
          //     itemPics[getRandom(0, 4)],
          //     fit: BoxFit.scaleDown,
          //   ),
        ),
        // child: Column(
        //   children: <Widget>[
        //     Text(
        //       item.itemTitle,
        //       style: TextStyle(color: Colors.green, fontSize: 10),
        //     ),
        //   ],
        // )
      ),
      Text(
        // "sdfsa",
        item.itemTitle,
        style: TextStyle(color: Colors.green, fontSize: 12),
        textAlign: TextAlign.justify,
      ),
      Text(
        // "sdfsa",
        item.itemDesc,
        style: TextStyle(color: Colors.green, fontSize: 10),
      ),
      Text(
        // "sdfsa",
        item.itemFlag,
        style: TextStyle(color: Colors.green, fontSize: 10),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            // "sdfsa",
            item.itemPrice,
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
          Text(
            // "sdfsa",
            item.itemPriceOrig,
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
        ],
      )
    ],
  ));
}

Widget genItemContents(BuildContext context, int flex) {
  return Expanded(
    flex: flex,
    child: Container(
      color: Colors.red,
      // color: getGlobalColorBackgroundLv2TopBar(context),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[Text("R2C1")],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 0,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // children: <Widget>[Text("R1C2")],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[Text("R2C2")],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 0,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // children: <Widget>[Text("R1C2")],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  // color: Colors.grey,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("●质量保证",
                                      style: TextStyle(
                                        color: getGlobalColorFontLight(context),
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        // fontFamily:
                                      ))
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("●全场平价",
                                      style: TextStyle(
                                        color: getGlobalColorFontLight(context),
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        // fontFamily:
                                      ))
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}

class GroupTab extends StatefulWidget {
  String ClassTitle = "Tab标题0";
  GroupTab(this.ClassTitle) {}
  @override
  _GroupTabState createState() => _GroupTabState(ClassTitle: this.ClassTitle);
}

class _GroupTabState extends State<GroupTab> {
  String ClassTitle = "Tab标题1";
  List<ItemKeys> datas = getDataList();

  _GroupTabState({this.ClassTitle}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(1.0, 1.0))
            ],
            color: getGlobalColorBackgroundLv3GroupContentPage(context),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5)
            // border: 2.0,
            ),
        // color: Colors.lightGreen,

        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.grey,
                    color: getGlobalColorBackgroundLv3GroupContentPage(context),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)
                    // border: 2.0,
                    ),
                // height: 40.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red[100],
                            color: getGlobalColorBackgroundLv3GroupContentPage(
                                context),
                            // color: Colors.lightGreen[100],
                            // border: Border.all(
                            //   color: Colors.grey,

                            // ),
                            // shape: BoxShape.rectangle,
                            // borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text(this.ClassTitle),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                        // child: Text("Row 3"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                // height: 40.0,
                decoration: BoxDecoration(
                    // color: Colors.red[100],
                    color: getGlobalColorBackgroundLv3GroupContentPage(context),
                    // color: Colors.lightGreen[100],
                    // border: Border.all(
                    //   color: Colors.lightGreen,
                    // ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)
                    // border: 2.0,
                    ),
                child: Container(
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: datas.length,
                      //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //横轴元素个数
                          crossAxisCount: 1,
                          //纵轴间距
                          mainAxisSpacing: 0.0,
                          //横轴间距
                          crossAxisSpacing: 0.0,
                          //子组件宽高长度比例
                          childAspectRatio: 1.5),
                      itemBuilder: (BuildContext context, int index) {
                        //Widget Function(BuildContext context, int index)
                        return getItemContainer(context, datas[index]);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BasketItem extends StatefulWidget {
  @override
  _BasketItemState createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  bool SelectVal = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
        child: Container(
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 500.0,
                    color: Colors.green,
                    child: Checkbox(
                        value: this.SelectVal,
                        onChanged: (bool val) {
                          this.setState(() {
                            this.SelectVal = !this.SelectVal;
                          });
                        }),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                      height: 500, color: Colors.grey, child: Text("商品图片"))),
              Expanded(
                  flex: 6,
                  child: Container(
                      height: 500,
                      color: Colors.yellow,
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
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                                    child: Text("商品标题"),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Text("商品型号"),
                                  )),
                              Expanded(
                                  flex: 1,
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
                                            flex: 5,
                                            child: Text("75"),
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
                                            child: CounterEditWidget(),
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

class CounterEditWidget extends StatefulWidget {
  @override
  _CounterEditWidgetState createState() => _CounterEditWidgetState();
}

class _CounterEditWidgetState extends State<CounterEditWidget> {
  void _ItemCntChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 50,
      // height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            // color: Colors.blue,
            child: FlatButton(
              onPressed: null,
              child: Text("-  ",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                  )),
            ),
          ),

          Expanded(
            child: TextField(
              // maxLength: 5,
              maxLines: 1,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0.0),

                // labelText: '请输入查找的商品名称',
                // helperText: '请输入商品名称',
                // icon:Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
              onChanged: _ItemCntChanged,
            ),
          ),

          Container(
            width: 30,
            // color: Colors.blue,
            child: FlatButton(
              onPressed: null,
              child: Text("+",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                  )),
            ),
          ),

          // FlatButton(
          //   onPressed: null,
          //   child: Text("+",
          //     style: TextStyle(
          //       decoration: TextDecoration.none,
          //       fontSize: 20.0,

          //     )
          //   ),
          // ),
        ],
      ),
    );
  }
}

class test22 extends StatefulWidget {
  @override
  _test22State createState() => _test22State();
}

class _test22State extends State<test22> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

List<String> getDataListMe() {
  List<String> list = [];
  // for (int i = 0; i <  4; i++) {
  //   list.add(i.toString());
  // }
  list.add("待付款");
  list.add("待收货");
  list.add("待评价");
  list.add("售后");
  list.add("全部订单");
  return list;
}

List<Widget> getWidgetListMe(BuildContext context) {
  return getDataListMe()
      .map((item) => getItemContainerMe(context, item))
      .toList();
}

Widget getItemContainerMe(BuildContext context, String item) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Container(
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      color: Colors.blue,
    ),
  );
}

class GroupTabMe extends StatefulWidget {
  String ClassTitle = "Tab标题0";
  GroupTabMe(this.ClassTitle) {}
  @override
  _GroupTabMeState createState() =>
      _GroupTabMeState(ClassTitle: this.ClassTitle);
}

class _GroupTabMeState extends State<GroupTabMe> {
  String ClassTitle = "Tab标题1";
  List<String> datas = getDataListMe();

  _GroupTabMeState({this.ClassTitle}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
            // color: Colors.lightGreen[100],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5)
            // border: 2.0,
            ),
        // color: Colors.lightGreen,

        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)
                    // border: 2.0,
                    ),
                // height: 40.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.red[100],
                              // color: Colors.lightGreen[100],
                              // border: Border.all(
                              //   color: Colors.grey,

                              // ),
                              // shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.circular(5)

                              ),
                          child: Text(this.ClassTitle),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                        // child: Text("Row 3"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                // height: 40.0,
                decoration: BoxDecoration(
                    // color: Colors.red[100],
                    color: Colors.lightGreen[100],
                    border: Border.all(
                      color: Colors.lightGreen,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)
                    // border: 2.0,
                    ),
                child: Container(
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: datas.length,
                      //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //横轴元素个数
                          crossAxisCount: 5,
                          //纵轴间距
                          mainAxisSpacing: 20.0,
                          //横轴间距
                          crossAxisSpacing: 10.0,
                          //子组件宽高长度比例
                          childAspectRatio: 1.0),
                      itemBuilder: (BuildContext context, int index) {
                        //Widget Function(BuildContext context, int index)
                        return getItemContainerMe(context, datas[index]);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
