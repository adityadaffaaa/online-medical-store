class allProductsCardData {
  String image;
  String title;
  int price;
  double rate;
  bool label;
  String labelText;
  int labelColor;
  allProductsCardData(
      {required this.image,
      required this.title,
      required this.price,
      required this.label,
      required this.labelText,
      required this.labelColor,
      required this.rate});
}

var allProductsCardDatas = [
  allProductsCardData(
      image: "assets/img/allproducts-1.png",
      title: "Accu-check Active Test Strip",
      price: 112,
      rate: 4.2,
      label: true,
      labelColor: 0xffFF5A5A,
      labelText: "SALE"),
  allProductsCardData(
      image: "assets/img/allproducts-2.png",
      title: "Omron HEM-8712 BP Monitor",
      price: 112,
      rate: 4.2,
      label: true,
      labelColor: 0xffFFC618,
      labelText: "15% OFF"),
  allProductsCardData(
      image: "assets/img/allproducts-3.png",
      title: "Accu-check Active Test Strip",
      price: 112,
      rate: 4.2,
      label: false,
      labelColor: 0,
      labelText: ""),
  allProductsCardData(
      image: "assets/img/allproducts-4.png",
      title: "Omron HEM-8712BP Monitor",
      price: 112,
      rate: 4.2,
      label: false,
      labelColor: 0,
      labelText: ""),
];
