class SpecialOffersModel {
  String title;
  String brandCount;
  String backImg;

  SpecialOffersModel({this.title, this.brandCount, this.backImg});
}

List<SpecialOffersModel> special = [
  SpecialOffersModel(
      title: 'دیجیتال',
      brandCount: '8',
      backImg: 'assets/images/Image Banner 2.png'),
  SpecialOffersModel(
      title: 'لباس',
      brandCount: '5',
      backImg: 'assets/images/Image Banner 3.png'),
];
