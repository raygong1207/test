import 'package:bangmc/pages/MorePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/common_cfg.dart';
import '../common/common_api.dart';
// import 'package:flutterautotext/flutterautotext.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../common/goods.dart';
import '../common/ShoppingCart.dart';
// import '../pages/ShopBasketPage.dart';
import '../pages/MorePage.dart';

toast(String text) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER, // 消息框弹出的位置
    timeInSecForIos: 1, // 消息框持续的时间（目前的版本只有ios有效）
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 24.0,
  );
}

class GoodsMin extends Goods {}

List<Widget> getWidgetList(BuildContext context) {
  // return getDataList().map((item) => getItemContainer(context, item)).toList();
}

Widget getItemContainer(BuildContext context, Goods item) {
  return Padding(
    padding: EdgeInsets.fromLTRB(5, 2, 5, 2),

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
    //           item.goodsTitle,
    //           style: TextStyle(color: Colors.green, fontSize: 10),
    //         ),
    //       ],
    //     )),
    child: genItemContents2(context, 1, item),
  );
}

Widget genItemContents2(BuildContext context, int flex, Goods item) {
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
              image: AssetImage(item.goodsPicsPath[0]), fit: BoxFit.cover),
          // goodsPicsPath
          // image: AssetImage(itemPics[getRandom(0, 4)]),
          // fit: BoxFit.cover),
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
        //       item.goodsTitle,
        //       style: TextStyle(color: Colors.green, fontSize: 10),
        //     ),
        //   ],
        // )
      ),
      // Text(
      //   // "sdfsa",
      //   item.goodsTitle,
      //   style: TextStyle(color: Colors.green, fontSize: 12),
      //   textAlign: TextAlign.justify,
      // ),
      Text(
        // "sdfsa",
        item.goodsDesc,
        style: TextStyle(color: Colors.green, fontSize: 10),
      ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            // "sdfsa",
            item.goodsFlags[0],
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
          Text(
            // "sdfsa",
            item.goodsFlags[1],
            // item.goodsTypeSecond,
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            // "sdfsa",
            item.getGoodsPrice(),
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
          // InkWell(
          //   splashColor: Colors.red,
          //   highlightColor: Colors.black,
          //   radius: 2,
          //   borderRadius: BorderRadius.circular(5.0),
          //   onTap: () {
          //     print("加入购物车");
          //     // toast("加入购物车");
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15),
          //       color: Colors.green,
          //     ),
          //     child: Icon(
          //       Icons.add,
          //       color: Colors.white,
          //     ),
          //   ),
          // )

          // IconButton(icon: Icons.book, onPressed: () {},)
          // Text(
          //   // "sdfsa",
          //   item.goodsPriceOrig,
          //   style: TextStyle(color: Colors.green, fontSize: 10),
          // ),
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            // "sdfsa",
            item.getGoodsPriceOrig(),
            // style: TextStyle(color: Colors.green, fontSize: 10),
            style: TextStyle(
              // color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              // decorationColor: const Color(0xff000000),
              fontSize: 10.0,
              color: Colors.grey,
              decorationColor: Colors.grey,
            ),
          ),
          InkWell(
            splashColor: Colors.red,
            highlightColor: Colors.black,
            radius: 2,
            borderRadius: BorderRadius.circular(5.0),
            onTap: () {
              print("加入购物车1");
              toast("加入购物车1");
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15),
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )

          // IconButton(icon: Icons.book, onPressed: () {},)
          // Text(
          //   // "sdfsa",
          //   item.goodsPriceOrig,
          //   style: TextStyle(color: Colors.green, fontSize: 10),
          // ),
        ],
      ),
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
  String classTitle = "标题";
  String classTypeSecond = "类型";
  GroupTab(this.classTitle, this.classTypeSecond); // {}
  @override
  _GroupTabState createState() => _GroupTabState(
      classTitle: this.classTitle, classTypeSecond: this.classTypeSecond);
}

class _GroupTabState extends State<GroupTab> {
  String classTitle = "2标题2";
  String classTypeSecond = "2类型2";

  _GroupTabState({this.classTitle, this.classTypeSecond}); // {}

  @override
  Widget build(BuildContext context) {
    List<Goods> datas = getDataList(this.classTypeSecond);
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
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Expanded(
                    //   flex: 1,
                    //   child:
                    Padding(
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
                        child: Text(this.classTitle),
                      ),
                    ),
                    // ),
                    // Expanded(
                    //   flex: 1,
                    //   child:
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      // child: Text("更多"),
                      child: InkWell(
                        splashColor: Colors.red,
                        highlightColor: Colors.black,
                        radius: 2,
                        borderRadius: BorderRadius.circular(5.0),
                        onTap: () {
                          print("进入更多页面1${this.classTitle}");
                          // Navigator.pushNamed(context, "/search");
                          Navigator.pushNamed(context, "/more",
                              arguments: {'title': this.classTitle});
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => MorePage(this.classTitle)));
                          // MorePage();
                          // toast("加入购物车");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.green,
                          ),
                          // child: Icon(
                          //   Icons.add,
                          //   color: Colors.black,
                          // ),
                          child: Text("更多"),
                        ),
                      ),
                    ),
                    // ),
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
  GoodsCart goods;
  ShoppingCart cart;
  var thisclass;
  BasketItem(this.thisclass, this.cart, this.goods);
  @override
  _BasketItemState createState() => _BasketItemState(
      thisclass: this.thisclass, cart: this.cart, goods: this.goods);
}

class _BasketItemState extends State<BasketItem> {
  bool selectVal = true;
  String classTypeSecond = "肉类";
  ShoppingCart cart;
  GoodsCart goods;
  var thisclass;
  _BasketItemState({this.thisclass, this.cart, this.goods});
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
                  flex: 1,
                  child: Container(
                    height: 150.0,
                    color: Colors.white,
                    child: Checkbox(
                        // value: this.selectVal,
                        value: this.goods.selectedInCart,
                        onChanged: (bool val) {
                          this.setState(() {
                            this.goods.selectedInCart =
                                !this.goods.selectedInCart;
                            this.selectVal = this.goods.selectedInCart;
                            if (this.goods.selectedInCart == true) {
                              // this.goods.
                              print(this.cart.getCartSelectedPrice());
                            } else {
                              print(this.cart.getCartSelectedPrice());
                            }
                          });
                          thisclass.setState(() {
                            // cart.goodsCntAll++;
                            this.cart.getCartSelectedPrice();
                            print("2goodsCntAll=${this.cart.goodsCntAll}");
                          });
                        }),
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

class BasketItem1 extends StatefulWidget {
  GoodsCart goods;
  // ShoppingCart cart;
  BasketItem1(this.goods);
  @override
  _BasketItemState1 createState() => _BasketItemState1(goods: this.goods);
}

class _BasketItemState1 extends State<BasketItem1> {
  bool selectVal = true;
  String classTypeSecond = "肉类";
  // ShoppingCart cart;
  GoodsCart goods;
  _BasketItemState1({this.goods});
  @override
  Widget build(BuildContext context) {
    List<Goods> datas = getDataList(this.classTypeSecond);
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
                  flex: 1,
                  child: Container(
                    height: 150.0,
                    color: Colors.white,
                    child: Checkbox(
                        // value: this.selectVal,
                        value: this.goods.selectedInCart,
                        onChanged: (bool val) {
                          this.setState(() {
                            this.goods.selectedInCart =
                                !this.goods.selectedInCart;
                            this.selectVal = this.goods.selectedInCart;
                            if (this.goods.selectedInCart == true) {
                              // this.goods.
                              // print(this.cart.getCartSelectedPrice());
                            }
                          });
                        }),
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
  String classTitle = "Tab2标题0";
  GroupTabMe(this.classTitle) {}
  @override
  _GroupTabMeState createState() =>
      _GroupTabMeState(classTitle: this.classTitle);
}

class _GroupTabMeState extends State<GroupTabMe> {
  String classTitle = "Tab3标题1";
  List<String> datas = getDataListMe();

  _GroupTabMeState({this.classTitle}) {}

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
                          child: Text(this.classTitle),
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
