import '../common/goods.dart';

class GoodsCart extends Goods {
  bool selectedInCart = true;
  int goodsCnt = 1;
}

class ShoppingCart {
  int goodsCntAll = 0;
  int goodsCntSelected = 0;
  double goodsSelectedPrice = 0.0;
  double goodsAllPrice = 0.0;
  List<GoodsCart> goods = [];

  String getCartSelectedPrice() {
    print("getCartSelectedPrice in");
    print("goods0=${this.goods[0].selectedInCart}");
    print(this.goods[0].selectedInCart);
    if (this.goods[0].selectedInCart == true) {
      print("object true");
    } else {
      print("object false");
    }
    this.goods.map((f) {
      print("sel=${f.selectedInCart}");
      if (f.selectedInCart == true) {
        this.goodsCntSelected += f.goodsCnt;
        print("Select cnt=${this.goodsCntSelected}");
        print("Select f.goodsCnt=${f.goodsCnt}");
      }
    });
    return "￥" + this.goodsSelectedPrice.toString();
  }

  String getCartAllPrice() {
    return "￥" + this.goodsAllPrice.toString();
  }
}
