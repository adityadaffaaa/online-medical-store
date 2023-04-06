class dealsOfTheDayData {
  String image;
  String title;
  int price;
  double rate;

  dealsOfTheDayData(
      {required this.image,
      required this.title,
      required this.price,
      required this.rate});
}

var dealsOfTheDayDatas = [
  dealsOfTheDayData(
      image: "assets/img/deals-1.png",
      title: "Accu-check Active Test Strip",
      price: 112,
      rate: 4.2),
  dealsOfTheDayData(
      image: "assets/img/deals-2.png",
      title: "Omron HEM-8712 BP Monitor",
      price: 150,
      rate: 4.5),
];
