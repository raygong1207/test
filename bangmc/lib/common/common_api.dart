import 'dart:math';
// import 'package:bangmc/common/ShoppingCart.dart';
import '../common/goods.dart';
import '../common/ShoppingCart.dart';

List itemPics = [
  "lib/res/haixian/haixian_longxiao01.jpg",
  "lib/res/shucai/shucai_xilanhua01.jpg",
  "lib/res/shuiguo/shuiguo_mugua01.jpg",
  "lib/res/shushi/shushi_lurou01.jpg",
  "lib/res/yinliao/yinliao_pijiu_jiashibo01.jpg",
];

List<Goods> getDataList(String typeSecond) {
  List<Goods> list = [];
  // double price = 0.0;
  print(typeSecond);
  int num1 = 0;
  int num2 = 0;
  for (int i = 0; i < 10; i++) {
    Goods item = new Goods();
    item.goodsType = "蔬菜";
    item.goodsTypeSecond = typeSecond;
    item.goodsTitle = "商品标题";
    item.goodsDesc = "商品描述";
    // item.goodsFlags[0] = "商品标签1";
    // item.goodsFlags[1] = "商品标签2";
    item.goodsFlags.add("商品标签1");
    item.goodsFlags.add("商品标签2");
    item.goodsPrice = 98.00;
    item.goodsPriceOrig = 9999.00;
    num1 = getRandom(0, 100);
    num2 = getRandom(0, 5);
    // print(num1);
    item.goodsTitle = item.goodsTitle + num1.toString();
    item.goodsPrice += num1;
    // item.goodsPicsPath[0] = itemPics[num2];
    item.goodsPicsPath.add(itemPics[num2]);
    list.add(item);
  }

  return list;
}

List<GoodsCart> getGoodsCartList(String typeSecond) {
  List<GoodsCart> list = [];
  // double price = 0.0;
  print(typeSecond);
  int num1 = 0;
  int num2 = 0;
  for (int i = 0; i < 10; i++) {
    GoodsCart item = new GoodsCart();
    item.goodsType = "蔬菜";
    item.goodsTypeSecond = typeSecond;
    item.goodsTitle = "商品标题";
    item.goodsDesc = "商品描述";
    // item.goodsFlags[0] = "商品标签1";
    // item.goodsFlags[1] = "商品标签2";
    item.goodsFlags.add("商品标签1");
    item.goodsFlags.add("商品标签2");
    item.goodsPrice = 98.00;
    item.goodsPriceOrig = 9999.00;
    num1 = getRandom(0, 100);
    num2 = getRandom(0, 5);
    // print(num1);
    item.goodsTitle = item.goodsTitle + num1.toString();
    item.goodsPrice += num1;
    // item.goodsPicsPath[0] = itemPics[num2];
    item.goodsPicsPath.add(itemPics[num2]);
    list.add(item);
  }

  return list;
}

ShoppingCart getShoppingCart(String typeSecond) {
  ShoppingCart Cart = new ShoppingCart();
  // double price = 0.0;
  print(typeSecond);
  int num1 = 0;
  int num2 = 0;
  for (int i = 0; i < 10; i++) {
    GoodsCart item = new GoodsCart();
    item.goodsType = "蔬菜";
    item.goodsTypeSecond = typeSecond;
    item.goodsTitle = "商品标题";
    item.goodsDesc = "商品描述";
    // item.goodsFlags[0] = "商品标签1";
    // item.goodsFlags[1] = "商品标签2";
    item.goodsFlags.add("商品标签1");
    item.goodsFlags.add("商品标签2");
    item.goodsPrice = 98.00;
    item.goodsPriceOrig = 9999.00;
    num1 = getRandom(0, 100);
    num2 = getRandom(0, 5);
    // print(num1);
    item.goodsTitle = item.goodsTitle + num1.toString();
    item.goodsPrice += num1;
    // item.goodsPicsPath[0] = itemPics[num2];
    item.goodsPicsPath.add(itemPics[num2]);
    // list.add(item);
    Cart.goods.add(item);
  }

  return Cart;
}

int getRandom(int min, int max) {
  var rand = new Random();
  return rand.nextInt(max);
}
