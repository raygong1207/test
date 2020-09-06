import 'package:flutter/material.dart';
import '../pages/HomePage.dart';
import '../pages/CategoryPage.dart';
import '../pages/MainPage.dart';
import '../pages/MePage.dart';
import '../pages/MorePage.dart';
import '../pages/NaviPage.dart';
import '../pages/SearchPage.dart';
import '../pages/NaviPage.dart';
import '../pages/ShopBasketPage.dart';
// import '../pages/MorePage.dart';
import '../pages/HomePages/HomeRecommendPage.dart';
import '../pages/HomePages/HomeVegetables.dart';

final routes = {
  '/': (context, {arguments}) => MainPage(),
  '/home': (context, {arguments}) => HomePage(),
  '/search': (context, {arguments}) => SearchPage(),
  '/category': (context, {arguments}) => CategoryPage(),
  '/shopCart': (context, {arguments}) => ShopBasketPage(),
  '/me': (context, {arguments}) => MePage(),
  '/more': (context, {arguments}) => MorePage(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
