import 'package:bangmc/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import '../pages/HomePages/HomeRecommendPage.dart';
import '../pages/HomePages/HomeVegetables.dart';

class HomePage extends StatefulWidget {
  const HomePage():super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  // ScrollController _scrollController;
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 12);

    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  // void initState(){
  //   super.initState();
  //   // _scrollController = ScrollController();
  //   _tabController = TabController(vsync: this, length: 6);
  // }

  // void dispose(){
  //   // _scrollController.dispose();
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // appBar: AppBar(
    //   //   backgroundColor:Colors.white,
        
    //   //   leading: Image.asset("image/logo4.jpg"),
    //   //   // leading: Image.file("F:\\tools\\Android\\projects\\bangmc\\bangmc\\lib\\res\\pic\\logo4.jpg"),
    //   //   // leading: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584876814367&di=5e39d845b39cfbb8ac72af2c7ebe895e&imgtype=0&src=http%3A%2F%2Fimg.51miz.com%2FElement%2F00%2F37%2F88%2F50%2F9e9ac4f8_E378850_544af60f.png%2521%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue%2Fformat%2Fpng")
    //   //   title: Row(
    //   //     children: <Widget>[
    //   //       Text("帮买菜",
    //   //         style: TextStyle(
    //   //           color: Colors.green,
    //   //           decoration: TextDecoration.none,
    //   //           fontSize: 25.0,
    //   //           // fontFamily: 

    //   //         )
    //   //       ),
    //   //       // SearchBar(),
    //   //       TabBar(
    //   //       isScrollable: true,
    //   //       controller: _tabController,
    //   //       tabs: <Widget>[


    //   //         // Tab(text:"首页"),
    //   //         Tab(text:"推荐"),
    //   //         Tab(text:"蔬菜"),
    //   //         Tab(text:"肉类"),
    //   //         Tab(text:"水果"),
    //   //         Tab(text:"海鲜"),
    //   //         Tab(text:"水产"),
    //   //         Tab(text:"主食"),
    //   //         Tab(text:"配料"),
    //   //         Tab(text:"熟食"),
    //   //         Tab(text:"干货"),
    //   //         Tab(text:"饮料"),
    //   //         Tab(text:"其他"),

    //   //       ]),
            


    //   //     ],
    //   //   ),

        
    //   // ),
    //     appBar: AppBar(
  
    //       title: TabBar(
    //         isScrollable: true,
    //         controller: _tabController,
    //         tabs: <Widget>[


    //           // Tab(text:"首页"),
    //           Tab(text:"推荐"),
    //           Tab(text:"蔬菜"),
    //           Tab(text:"肉类"),
    //           Tab(text:"水果"),
    //           Tab(text:"海鲜"),
    //           Tab(text:"水产"),
    //           Tab(text:"主食"),
    //           Tab(text:"配料"),
    //           Tab(text:"熟食"),
    //           Tab(text:"干货"),
    //           Tab(text:"饮料"),
    //           Tab(text:"其他"),

    //         ]),
    //       // leading: Icon(Icons.home),
    //       backgroundColor: Colors.amber[1000],
    //       // bottom: 
    //     ),
    //     body: TabBarView(controller: _tabController,
    //       children: <Widget>[
    //         // Center(
    //         //   // child: Text('首页内容...'),
    //         //   child: HomeRecommendPage(),
    //         // ),
    //         Center(
    //           child: HomeRecommendPage(),
    //         ),
    //         // Text('推荐内容...'),
    //         // Text('蔬菜内容...'),
    //         HomeVegetablesPage(),
    //         Text('肉类内容...'),
    //         Text('水果内容...'),
    //         Text('海鲜内容...'),
    //         Text('水产内容...'),
    //         Text('主食内容...'),
    //         Text('配料内容...'),
    //         Text('熟食内容...'),
    //         Text('干货内容...'),
    //         Text('饮料内容...'),
    //         Text('其他内容...'),
    //       ]),
    //   );

ss
        return Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 500,
                    color: Colors.blue,
                // decoration:BoxDecoration(
                //   // color: Colors.red[100],
                //   color: Colors.blue,
                //   border: Border.all(
                //     color: Colors.lightGreen,

                //   ),
                //   shape: BoxShape.rectangle,
                //   // borderRadius: BorderRadius.circular(5)
                //   // border: 2.0,
                // ),
                child: Text("帮买菜",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 25.0,
                // fontFamily: 

              )
            ),

              )
                ],
              ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  child: Scaffold(
      
        appBar: AppBar(
  
          title: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: <Widget>[


              // Tab(text:"首页"),
              Tab(text:"推荐"),
              Tab(text:"蔬菜"),
              Tab(text:"肉类"),
              Tab(text:"水果"),
              Tab(text:"海鲜"),
              Tab(text:"水产"),
              Tab(text:"主食"),
              Tab(text:"配料"),
              Tab(text:"熟食"),
              Tab(text:"干货"),
              Tab(text:"饮料"),
              Tab(text:"其他"),

            ]),
          // leading: Icon(Icons.home),
          backgroundColor: Colors.amber[1000],
          // bottom: 
        ),
        body: TabBarView(controller: _tabController,
          children: <Widget>[
            // Center(
            //   // child: Text('首页内容...'),
            //   child: HomeRecommendPage(),
            // ),
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
                  

                )),
            // Text("Title"),
            

          ],

        );
        
          
    
    
  }
}