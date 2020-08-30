class Goods {
  int goodsID;
  String goodsType;
  String goodsTypeSecond;
  String goodsTitle;
  String goodsDesc;
  int goodsFlagCnt;
  List<String> goodsFlags = [];
  double goodsPrice;
  double goodsPriceOrig;
  double goodsUnitCnt = 1.0;
  int goodsPicsCnt;
  List<String> goodsPicsPath = [];

  String getGoodsPrice() {
    return "￥" + this.goodsPrice.toString();
  }

  String getGoodsPriceOrig() {
    return "￥" + this.goodsPriceOrig.toString();
  }
}
