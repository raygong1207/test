import 'package:flutter/material.dart';

Color getGlobalColorBackgroundUnified(BuildContext context) {
  // return Colors.red;
  // return Colors.white;
  // return Colors.lightGreen[50];
  return Colors.grey[50];
}

//一级导航页面的状态栏背景色
Color getGlobalColorBackgroundStatusBar(BuildContext context) {
  // return Colors.red;
  return Colors.white;
  // return getGlobalColorBackgroundUnified(context);
}

//二级导航页面的top bar背景色
Color getGlobalColorBackgroundLv2TopBar(BuildContext context) {
  // return Colors.red;
  return Colors.white;
  // return Color(0x00000000);
  // return getGlobalColorBackgroundUnified(context);
}

//二级导航页面的navi tab bar背景色
Color getGlobalColorBackgroundLv2NaviBar(BuildContext context) {
  // return Colors.red;
  return Colors.white;
  // return getGlobalColorBackgroundUnified(context);
}

//二级导航页面的内容页面背景色
Color getGlobalColorBackgroundLv2ContentPage(BuildContext context) {
  // return Colors.red;
  // return Colors.white;
  return getGlobalColorBackgroundUnified(context);
}

//三级Group页面背景色
Color getGlobalColorBackgroundLv3GroupContentPage(BuildContext context) {
  // return Colors.red;
  return Colors.white;
  // return getGlobalColorBackgroundUnified(context);
}

//四级Item页面背景色
Color getGlobalColorBackgroundLv4ItemContentPage(BuildContext context) {
  // return Colors.red;
  // return Colors.white;
  return getGlobalColorBackgroundUnified(context);
}

//一级底部导航按钮选中的颜色
Color getGlobalColorBackgroundBottomNaviButton(BuildContext context) {
  return Colors.greenAccent[400];
  // return Colors.lightGreen[400];
  // return Colors.lightGreenAccent[400];
}

Color getGlobalColorBackground4(BuildContext context) {
  // return Colors.blueGrey;
  // return Colors.white;
  return getGlobalColorBackgroundUnified(context);
}

//这个是Material主题颜色相关，具体咋回事没搞懂
MaterialColor getGlobalMColorBackground(BuildContext context) {
  // return Colors.blue;
  return Colors.lightGreen;
}

Color getGlobalColorFont(BuildContext context) {
  return Colors.greenAccent[400];
  // return Theme.of(context).primaryColor;
}

Color getGlobalColorFontLight(BuildContext context) {
  return Color(0xffdd0074);
  // return Theme.of(context).primaryColor;
}
