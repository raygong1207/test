class Goods {
  String goodsTitle;
  String goodsDesc;
  String goodsFlag;
  double goodsPrice;
  double goodsPriceOrig;

  String getGoodsPrice() {
    return "￥" + this.goodsPrice.toString();
  }

  String getGoodsPriceOrig() {
    return "￥" + this.goodsPrice.toString();
  }
}
