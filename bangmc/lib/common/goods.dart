class Goods {
  int goodsID;
  String goodsType;
  String goodsSubType1;
  String goodSSubType2;
  String goodsTypeSecond;
  String goodsTitle;
  String goodsDesc;
  int goodsFlagCnt;
  List<String> goodsFlags = [];
  double goodsPrice;
  double goodsPriceVip;
  double goodsPriceVvip;
  double goodsPriceOrig;
  double goodsUnitCnt = 1.0;
  int goodsPicsCnt;
  String foodFeature;
  String goodFor;
  String badFor;
  List<String> goodsPicsPath = [];

  String getGoodsPrice() {
    return "￥" + this.goodsPrice.toString();
  }

  String getGoodsPriceOrig() {
    return "￥" + this.goodsPriceOrig.toString();
  }
}
