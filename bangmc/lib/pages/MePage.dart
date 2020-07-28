import 'package:bangmc/pages/test.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            decoration: new BoxDecoration(
              //背景
              color: Colors.blue,
              gradient: LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xDDDDDDDD), Color(0xAAAAAAAA)], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
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
                  child: Container()
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        width: 50.0,
                        height: 50.0,
                        // decoration: new BoxDecoration(
                        //    shape: BoxShape.circle,
                          //背景
                          // color: Colors.blue,
                          // gradient: LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xDDDDDDDD), Color(0xAAAAAAAA)], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
                          //设置四周圆角 角度
                          // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          // borderRadius: BorderRadius.only()
                          //设置四周边框
                          // border: new Border.all(width: 1, color: Colors.red),
                        // ),
                        child: ClipOval(
                          child: Image.network(
                          "https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2798216820,1841993320&fm=26&gp=0.jpg",
                          fit: BoxFit.cover
                        ),

                        ),
                        
                        

                      ),
                      // Text("昵称"),
                      // Text("收货地址")
                      
                    ],
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("账号名    :"),
                        Text("收货地址:"),
                        
                      ],
                    ),
                  ),
                ),

                // Text("全部商品（100）"),
                // Text("已选商品（10）"),
              ],
            )
          )
        ),
        Expanded(
          flex: 10,
          child: Padding(
            
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Column(
            children: <Widget>[
                GroupTabMe("我的订单"),
                GroupTabMe("我的收藏"),

              ],
            ),
          )
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
            child: Container(
            decoration: new BoxDecoration(
              //背景
              color: Colors.blue,
              gradient: LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xDDDDDDDD), Color(0xAAAAAAAA)], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
              //设置四周圆角 角度
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              // borderRadius: BorderRadius.only()
              //设置四周边框
              // border: new Border.all(width: 1, color: Colors.red),
            ),
            child: null,
          ),
            ),


        ),
      ]
    );
  }

}
// Text("我的",
//     style: TextStyle(
//     decoration: TextDecoration.none,
//     fontSize: 10.0,

//     )
//     );
//   }







// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar> {

//   void _searchFieldChanged(String str){
//     print(str);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(30.0),
//       child: TextField(
//         keyboardType: TextInputType.number,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(10.0),
//           icon:Icon(Icons.search),
//           labelText: '请输入查找的商品名称',
//           // helperText: '请输入商品名称',
//         ),
//         onChanged: _searchFieldChanged,
//       ),
      
      
//     );
//   }
// }