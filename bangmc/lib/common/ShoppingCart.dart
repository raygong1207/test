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
    // print("getCartSelectedPrice in");
    // print("goods0=${this.goods[0].selectedInCart}");
    // print(this.goods[0].selectedInCart);
    if (this.goods[0].selectedInCart == true) {
      // print("object true");
    } else {
      // print("object false");
    }
    // this.goods.forEach(f)
    // this.goods.map((f) {
    //   print("sel=${f.selectedInCart}");
    //   if (f.selectedInCart == true) {
    //     this.goodsCntSelected += f.goodsCnt;
    //     print("Select cnt=${this.goodsCntSelected}");
    //     print("Select f.goodsCnt=${f.goodsCnt}");
    //   }
    // });

    int i = 0;
    this.goodsCntSelected = 0;
    this.goodsSelectedPrice = 0.0;
    this.goodsCntAll = this.goods.length;
    for (i = 0; i < this.goods.length; i++) {
      GoodsCart f = this.goods[i];
      // print("sel1=${f.selectedInCart}");
      // print("sel1=${this.goodsCntSelected}");
      // print("sel1=${f.goodsCnt}");
      if (f.selectedInCart == true) {
        this.goodsCntSelected += f.goodsCnt;
        this.goodsSelectedPrice += f.goodsPrice;
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      } else {
        // this.goodsCntSelected -= f.goodsCnt;
        // print("Select cnt2=${this.goodsCntSelected}");
        // print("Select f.goodsCnt2=${f.goodsCnt}");
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      }
    }
    print("goodsCntSelected1=${this.goodsCntSelected}");
    print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
    return "￥" + this.goodsSelectedPrice.toString();
  }

  String cartSelectAll() {
    // print("getCartSelectedPrice in");
    // print("goods0=${this.goods[0].selectedInCart}");
    // print(this.goods[0].selectedInCart);
    if (this.goods[0].selectedInCart == true) {
      // print("object true");
    } else {
      // print("object false");
    }
    // this.goods.forEach(f)
    // this.goods.map((f) {
    //   print("sel=${f.selectedInCart}");
    //   if (f.selectedInCart == true) {
    //     this.goodsCntSelected += f.goodsCnt;
    //     print("Select cnt=${this.goodsCntSelected}");
    //     print("Select f.goodsCnt=${f.goodsCnt}");
    //   }
    // });

    int i = 0;
    this.goodsCntSelected = 0;
    this.goodsSelectedPrice = 0.0;
    this.goodsCntAll = this.goods.length;
    for (i = 0; i < this.goods.length; i++) {
      GoodsCart f = this.goods[i];
      // print("sel1=${f.selectedInCart}");
      // print("sel1=${this.goodsCntSelected}");
      // print("sel1=${f.goodsCnt}");
      f.selectedInCart = true;
      if (f.selectedInCart == true) {
        this.goodsCntSelected += f.goodsCnt;
        this.goodsSelectedPrice += f.goodsPrice;
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      } else {
        // this.goodsCntSelected -= f.goodsCnt;
        // print("Select cnt2=${this.goodsCntSelected}");
        // print("Select f.goodsCnt2=${f.goodsCnt}");
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      }
    }
    print("goodsCntSelected1=${this.goodsCntSelected}");
    print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
    return "￥" + this.goodsSelectedPrice.toString();
  }

  String cartUnSelectAll() {
    // print("getCartSelectedPrice in");
    // print("goods0=${this.goods[0].selectedInCart}");
    // print(this.goods[0].selectedInCart);
    if (this.goods[0].selectedInCart == true) {
      // print("object true");
    } else {
      // print("object false");
    }
    // this.goods.forEach(f)
    // this.goods.map((f) {
    //   print("sel=${f.selectedInCart}");
    //   if (f.selectedInCart == true) {
    //     this.goodsCntSelected += f.goodsCnt;
    //     print("Select cnt=${this.goodsCntSelected}");
    //     print("Select f.goodsCnt=${f.goodsCnt}");
    //   }
    // });

    int i = 0;
    this.goodsCntSelected = 0;
    this.goodsSelectedPrice = 0.0;
    this.goodsCntAll = this.goods.length;
    for (i = 0; i < this.goods.length; i++) {
      GoodsCart f = this.goods[i];
      // print("sel1=${f.selectedInCart}");
      // print("sel1=${this.goodsCntSelected}");
      // print("sel1=${f.goodsCnt}");
      f.selectedInCart = false;
      if (f.selectedInCart == true) {
        this.goodsCntSelected += f.goodsCnt;
        this.goodsSelectedPrice += f.goodsPrice;
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      } else {
        // this.goodsCntSelected -= f.goodsCnt;
        // print("Select cnt2=${this.goodsCntSelected}");
        // print("Select f.goodsCnt2=${f.goodsCnt}");
        // print("Select cnt1=${this.goodsCntSelected}");
        // print("Select f.goodsCnt1=${f.goodsCnt}");
        // print("goodsCntSelected1=${this.goodsCntSelected}");
        // print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
      }
    }
    print("goodsCntSelected1=${this.goodsCntSelected}");
    print("goodsSelectedPrice1=${this.goodsSelectedPrice}");
    return "￥" + this.goodsSelectedPrice.toString();
  }

  String getCartAllPrice() {
    return "￥" + this.goodsAllPrice.toString();
  }
}
