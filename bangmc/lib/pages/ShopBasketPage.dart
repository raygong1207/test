import 'package:flutter/material.dart';
import '../common/common_widgets.dart';
import '../common/common_api.dart';
import '../common/ShoppingCart.dart';

Widget shopBasketPageBody(
    _ShopBasketPageState thisclass, BuildContext context, ShoppingCart cart) {
  // List<GoodsCart> goodsList = getGoodsCartList("蔬菜");
  // ShoppingCart cart = getShoppingCart("蔬菜");
  return Column(children: <Widget>[
    Expanded(
        flex: 1,
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
                Text("全部商品（${cart.goodsCntAll} ）"),
                Text("已选商品（${cart.goodsCntSelected}）"),
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

                  children: cart.goods.map((f) {
                    return BasketItem(cart, f);
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
    Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
        child: Container(
            decoration: new BoxDecoration(
              //背景
              color: Colors.white,
              gradient: LinearGradient(colors: [
                Color(0xFFFFFFFF),
                Color(0xDDDDDDDD),
                Color(0xAAAAAAAA)
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
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 500.0,
                      // color: Colors.white,
                      child: Checkbox(
                          value: thisclass.selectVal,
                          onChanged: (bool val) {
                            thisclass.setState(() {
                              thisclass.selectVal = !thisclass.selectVal;
                            });
                          }),
                    )),
                Expanded(
                  flex: 2,
                  child: Text("全选（${cart.goodsCntAll}）"),
                ),
                Expanded(
                  flex: 3,
                  child: Text("总价：${cart.goodsSelectedPrice}"),
                ),
                Expanded(
                  flex: 3,
                  child: FlatButton(onPressed: null, child: Text("结算")),
                ),
              ],
            )),
      ),
    ),
  ]);
}

class ShopBasketPage extends StatefulWidget {
  @override
  _ShopBasketPageState createState() => _ShopBasketPageState();
}

class _ShopBasketPageState extends State<ShopBasketPage> {
  bool selectVal = false;
  @override
  Widget build(BuildContext context) {
    // return ShopBasketPageBody(this, context);
    ShoppingCart shoppingCart = getShoppingCart("蔬菜");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("购物车"),
      ),
      body: Center(child: shopBasketPageBody(this, context, shoppingCart)),
    );
  }
}
