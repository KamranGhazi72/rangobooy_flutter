class MainCategories {
  List<String> imgSubCat;
  List<String> nameSubCat;
  String title;

  MainCategories({this.imgSubCat, this.nameSubCat, this.title});
}

List<MainCategories> categories = [
  MainCategories(title: 'دیجیتال', nameSubCat: [
    'موبایل',
    'لبتاب',
    'لوازم جانبی',
    'کنسول بازی',
    'اسپیکر'
  ], imgSubCat: [
    'assets/images/mobile1.png',
    'assets/images/macbook.png',
    'assets/images/charger.png',
    'assets/images/ps5.png',
    'assets/images/PB300-speaker.png'
  ]),
  MainCategories(title: 'مد و پوشاک', nameSubCat: [
    'شلوار',
    'کفش',
    'کودک',
    'زنانه',
    'مردانه'
  ], imgSubCat: [
    'assets/images/pants.png',
    'assets/images/shoesCat.png',
    'assets/images/cloth-baby.png',
    'assets/images/women-cloth.png',
    'assets/images/t-shirt.png'
  ]),
  MainCategories(title: 'آشپزخانه', nameSubCat: [
    'ظرفشویی',
    'بشقاب',
    'یخچال',
    'لباس شویی'
  ], imgSubCat: [
    'assets/images/washing.png',
    'assets/images/plate.png',
    'assets/images/yakhchal.png',
    'assets/images/washing.png',
  ]),
  MainCategories(title: 'دکور', nameSubCat: [
    'گلدان',
    'مجسمه',
    'کمد',
    'مبل',
    'آباژور'
  ], imgSubCat: [
    'assets/images/abajour.png',
    'assets/images/abajour.png',
    'assets/images/abajour.png',
    'assets/images/abajour.png',
    'assets/images/abajour.png'
  ]),
  MainCategories(title: 'جواهرات', nameSubCat: [
    'انگشتر',
    'گردنبند',
    'نقره',
    'اکسسوری',
    'طلا'
  ], imgSubCat: [
    'assets/images/juwley.png',
    'assets/images/juwley.png',
    'assets/images/juwley.png',
    'assets/images/juwley.png',
    'assets/images/juwley.png'
  ]),
  MainCategories(title: 'زیبایی و سلامت', nameSubCat: [
    'لوازم آرایشی',
    'لوازم شخصی',
    'لوازم بهداشتی',
    'ابزار سلامت',
    'ادکلون'
  ], imgSubCat: [
    'assets/images/mobile1.png',
    'assets/images/mobile2.png',
    'assets/images/mobile1.png',
    'assets/images/mobile1.png',
    'assets/images/mobile2.png'
  ]),
];

List<MainCategories> subCategory = [
  MainCategories(
      title: 'دیجیتال',
      nameSubCat: ['موبایل', 'تبلت', 'لوازم جانبی', 'کنسول بازی', 'اسپیکر']),
  MainCategories(
      title: 'مد و پوشاک',
      nameSubCat: ['شلوار', 'کفش', 'کودک', 'زنانه', 'مردانه']),
  MainCategories(
      title: 'آشپزخانه',
      nameSubCat: ['ظرفشویی', 'بشقاب', 'یخچال', 'لباس شویی']),
  MainCategories(
      title: 'دکور', nameSubCat: ['گلدان', 'مجسمه', 'کمد', 'مبل', 'آباژور']),
  MainCategories(
      title: 'جواهرات',
      nameSubCat: ['انگشتر', 'گردنبند', 'نقره', 'اکسسوری', 'طلا']),
  MainCategories(title: 'زیبایی و سلامت', nameSubCat: [
    'لوازم آرایشی',
    'لوازم شخصی',
    'لوازم بهداشتی',
    'ابزار سلامت',
    'ادکلون'
  ]),
];
