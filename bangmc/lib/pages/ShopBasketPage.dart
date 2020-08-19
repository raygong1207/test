import 'package:flutter/material.dart';
import '../common/common_widgets.dart';
// import '../common/common_cfg.dart';

class ShopBasketPage extends StatefulWidget {
  @override
  _ShopBasketPageState createState() => _ShopBasketPageState();
}

class _ShopBasketPageState extends State<ShopBasketPage> {
  bool SelectVal = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          flex: 1,
          child: Container(
              decoration: new BoxDecoration(
                //背景
                color: Colors.blue,
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
                  Text("全部商品（100）"),
                  Text("已选商品（10）"),
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
                    children: <Widget>[
                      // GroupTab("搜索1"),
                      // GroupTab("搜索2"),
                      BasketItem(),
                      BasketItem(),
                      BasketItem(),
                      BasketItem(),
                      BasketItem(),
                      BasketItem(),
                      BasketItem(),
                    ],
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
                color: Colors.blue,
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
                    child: Text("全选（100）"),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text("总价：100"),
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
}
