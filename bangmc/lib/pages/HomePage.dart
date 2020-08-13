import 'package:bangmc/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import '../common/common.dart';
import '../pages/HomePages/HomeRecommendPage.dart';
import '../pages/HomePages/HomeVegetables.dart';

Widget chld(BuildContext context) {
  // return Text("帮买菜2",
  //                       // style: TextStyle(
  //                       //   color: getGlobalColorFont(),
  //                       //   decoration: TextDecoration.none,
  //                       //   fontSize: 25.0,
  //                       //   // fontFamily:

  //                       // )
  //                     );
  return Column(
    children: <Widget>[
      Text("帮买菜2",
          style: TextStyle(
            color: getGlobalColorFont(context),
            decoration: TextDecoration.none,
            fontSize: 25.0,
            // fontFamily:
          ))
    ],
  );
}

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // ScrollController _scrollController;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 12);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  Widget genAppBarHomePage_bk(BuildContext context, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Colors.blue,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.lightGreen[400],
                child: chld(context),
                // child: Column(
                //   children:<Widget>[
                //     Expanded(
                //       child: Padding(
                //         padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //           child: Container(
                //           decoration:BoxDecoration(
                //             color: getGlobalColorBackground(),
                //             // color: Colors.red,
                //             border: Border.all(
                //               color: getGlobalColorBackground(),
                //             ),
                //             // shape: BoxShape.rectangle,
                //             // borderRadius: BorderRadius.circular(5)
                //             // border: 2.0,
                //           ),
                //           child: chld(),

                //         ),
                //       )
                //     )
                //   ]
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _searchFieldChanged(String str) {
    print(str);
  }

  Widget genAppBarHomePage(BuildContext context, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
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
                                  children: <Widget>[
                                    // Text("R1C1")
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    // Text("R1C2")
                                  ],
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
                    // color: Colors.blue,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                                  children: <Widget>[
                                    // Text("R2C1")
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
                                    Text("帮买菜",
                                        style: TextStyle(
                                          color: getGlobalColorFont(context),
                                          decoration: TextDecoration.none,
                                          fontSize: 16.0,
                                          // fontFamily:
                                        ))
                                    // TextField(
                                    //   keyboardType: TextInputType.number,
                                    //   decoration: InputDecoration(
                                    //     contentPadding: EdgeInsets.all(0.0),

                                    //     labelText: '请输入查找的商品名称',
                                    //     // helperText: '请输入商品名称',
                                    //     icon:Icon(Icons.search),
                                    //     border: OutlineInputBorder(
                                    //       borderSide: BorderSide(
                                    //         color: getGlobalColorBackground4(context),
                                    //       ),
                                    //     ),
                                    //   ),
                                    //   onChanged: _searchFieldChanged,
                                    // ),
                                  ],
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
                                          color:
                                              getGlobalColorFontLight(context),
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
                                          color:
                                              getGlobalColorFontLight(context),
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
                                    Text("●免费送货",
                                        style: TextStyle(
                                          color:
                                              getGlobalColorFontLight(context),
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
                                    Text("●退换无忧",
                                        style: TextStyle(
                                          color:
                                              getGlobalColorFontLight(context),
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

  PreferredSizeWidget appBarLv2Home() {
    return AppBar(
      elevation: 0,
      title: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.greenAccent[400],
          indicatorWeight: 2,
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            // Tab(text:"首页"),
            Tab(text: "推荐"),
            Tab(text: "蔬菜"),
            Tab(text: "肉类"),
            Tab(text: "水果"),
            Tab(text: "海鲜"),
            Tab(text: "水产"),
            Tab(text: "主食"),
            Tab(text: "配料"),
            Tab(text: "熟食"),
            Tab(text: "干货"),
            Tab(text: "饮料"),
            Tab(text: "其他"),
          ]),
      // leading: Icon(Icons.home),
      backgroundColor: getGlobalColorBackgroundLv2NaviBar(context),

      // bottom:
    );
  }

  Widget genPageHomeBody(BuildContext context, int flex) {
    return Expanded(
        flex: flex,
        child: Container(
          color: Colors.white,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                child: appBarLv2Home(),
                // preferredSize: Size.square(10)
                preferredSize: Size.fromHeight(46)),
            // appBar: appBarLv2Home(),
            body: TabBarView(controller: _tabController, children: <Widget>[
              Center(
                child: HomeRecommendPage(),
              ),
              // Text('推荐内容...'),
              // Text('蔬菜内容...'),
              HomeVegetablesPage(),
              Text('肉类内容1...'),
              Text('水果内容...'),
              Text('海鲜内容...'),
              Text('水产内容...'),
              Text('主食内容...'),
              Text('配料内容...'),
              Text('熟食内容...'),
              Text('干货内容...'),
              Text('饮料内容...'),
              Text('其他内容...'),
            ]),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        genAppBarHomePage(context, 1),
        genPageHomeBody(context, 11),
      ],
    );
  }
}
