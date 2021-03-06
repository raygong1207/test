import 'package:flutter/material.dart';
// import '../common/common_widgets.dart';
import '../common/common_cfg.dart';
import './HomePage.dart';
import './CategoryPage.dart';
import './SearchPage.dart';
import './ShopBasketPage.dart';
import './MePage.dart';
// import '../pages/HomePages/HomeMainPage.dart';
// import '../res/pic/';

PreferredSizeWidget appBarFirstLvl(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
    child: SafeArea(
      top: true,
      child: Offstage(),
    ),
  );
  // return AppBar(
  //   elevation: 0,
  //   // backgroundColor:Colors.white,
  //   backgroundColor: getGlobalColorBackground2(context),
  //   // title: Text("帮买菜",
  //   //   style: TextStyle(
  //   //     color: Colors.green,
  //   //     decoration: TextDecoration.none,
  //   //     fontSize: 25.0,
  //   //     // fontFamily:

  //   //   )
  //   // ),
  //   // actions: <Widget>[
  //   //   // padding: const EdgeInsets.all(30.0),
  //   //   child: SearchBar(),

  //   // ],
  //   // leading: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584876814363&di=74bdf5f037dc1eda4552b4a0ca94c8d3&imgtype=0&src=http%3A%2F%2Fimg.aso.aizhan.com%2Ficon%2F18%2F36%2Fd7%2F1836d70ac0e64d26095c407661c460f8.jpg"),
  //   // leading: Image.asset("./lib/res/logo4.jpg"),
  //   // leading: Image.asset("image/logo4.jpg"),
  //   // leading: Image.file("F:\\tools\\Android\\projects\\bangmc\\bangmc\\lib\\res\\pic\\logo4.jpg"),
  //   // leading: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584876814367&di=5e39d845b39cfbb8ac72af2c7ebe895e&imgtype=0&src=http%3A%2F%2Fimg.51miz.com%2FElement%2F00%2F37%2F88%2F50%2F9e9ac4f8_E378850_544af60f.png%2521%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue%2Fformat%2Fpng"),
  //   title: Row(
  //     children: <Widget>[
  //       Text("帮买菜1",
  //           style: TextStyle(
  //             color: getGlobalColorFont(context),
  //             decoration: TextDecoration.none,
  //             fontSize: 25.0,
  //             // fontFamily:
  //           )),
  //       // SearchBar(),
  //     ],
  //   ),
  // );
}

Map<String, IconData> gNaviPageName = {
  "首页": Icons.home,
  // "分类": Icons.category,
  "搜索": Icons.search,
  "购物车": Icons.shopping_cart,
  "我的": Icons.perm_identity,
};

void printMap(Map<String, IconData> gNaviPageName) {
  // gNaviPageName.forEach(f)
}

List<BottomNavigationBarItem> genNaviBarButtonInfoList(
    Map<String, IconData> infoMap) {
  List<BottomNavigationBarItem> infoList = [];
  int i = 0;
  printMap(infoMap);
  infoMap.forEach((String key, IconData icons) {
    var item = BottomNavigationBarItem(title: Text(key), icon: Icon(icons));
    infoList.add(item);
  });
  return infoList;
}

Widget bottomNaviButtonCfg(BuildContext context, _NaviPageState thisClass,
    int _NaviItemIdx, Map<String, IconData> naviPageName) {
  return BottomNavigationBar(
    // elevation: 0,
    type: BottomNavigationBarType.fixed,
    iconSize: 24.0,
    currentIndex: _NaviItemIdx,
    fixedColor: getGlobalColorBackgroundBottomNaviButton(context),
    onTap: (int index) {
      print(index);
      thisClass.setState(() {
        thisClass._NaviItemIdx = index;
      });
    },
    items: genNaviBarButtonInfoList(naviPageName),
  );
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  void _searchFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),

          labelText: '请输入查找的商品名称',
          // helperText: '请输入商品名称',
          icon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: getGlobalColorBackground4(context),
            ),
          ),
        ),
        onChanged: _searchFieldChanged,
      ),
    );
  }
}

class NaviPage extends StatefulWidget {
  @override
  _NaviPageState createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  int _NaviItemIdx = 0;
  List _PageList = [
    HomePage(),
    // CategoryPage(),
    SearchPage(),
    ShopBasketPage(),
    MePage(),
  ];

  void _searchFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getGlobalColorBackgroundStatusBar(context),
      // 第一级appBar
      appBar: appBarFirstLvl(context),
      // 底部导航栏页面列表
      body: _PageList[this._NaviItemIdx],

      // 底部导航栏页面对应按钮名称等的配置
      bottomNavigationBar:
          bottomNaviButtonCfg(context, this, this._NaviItemIdx, gNaviPageName),
    );
  }
}
