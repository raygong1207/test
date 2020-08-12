import 'package:flutter/material.dart';

//二级导航页面的top bar背景色
Color getGlobalColorBackgroundLv2NaviBar(BuildContext context)
{
  return Colors.red;
  // return Colors.white;
  // return Color(0x00000000);
}

//一级导航页面的top bar背景色，reserved
Color getGlobalColorBackground2(BuildContext context)
{
  // return Colors.yellow;
  return Colors.white;
}

//一级底部导航按钮选中的颜色
Color getGlobalColorBackgroundBottomNaviButton(BuildContext context)
{
  return Colors.greenAccent[400];
  // return Colors.lightGreen[400];
  // return Colors.lightGreenAccent[400];

}

Color getGlobalColorBackground4(BuildContext context)
{
  return Colors.blueGrey;
  // return Colors.white;
}

//这个是Material主题颜色相关，具体咋回事没搞懂
MaterialColor getGlobalMColorBackground(BuildContext context)
{
  // return Colors.blue;
  return Colors.lightGreen;
}

Color getGlobalColorFont(BuildContext context)
{
  return Colors.greenAccent[400];
  // return Theme.of(context).primaryColor;
}

Color getGlobalColorFontLight(BuildContext context)
{
  return Color(0xffdd0074);
  // return Theme.of(context).primaryColor;
}
