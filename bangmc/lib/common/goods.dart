class Goods {
  String goodsType;
  String goodsTypeSecond;
  String goodsTitle;
  String goodsDesc;
  int goodsFlagCnt;
  List<String> goodsFlags = [];
  double goodsPrice;
  double goodsPriceOrig;
  double goodsCnt;
  int goodsPicsCnt;
  List<String> goodsPicsPath = [];

  String getGoodsPrice() {
    return "￥" + this.goodsPrice.toString();
  }

  String getGoodsPriceOrig() {
    return "￥" + this.goodsPriceOrig.toString();
  }
}
