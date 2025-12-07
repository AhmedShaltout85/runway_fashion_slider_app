class MenCategoryListModel {
  final String title;
  final String price;
  final String image;

  MenCategoryListModel({
    required this.title,
    required this.price,
    required this.image,
  });

  static List<MenCategoryListModel> menCategoryList = [
    MenCategoryListModel(
      title: "Gray coat and white T-sh..",
      price: "£30",
      image: "assets/images/image4-1.png",
    ),
    MenCategoryListModel(
      title: "Gray coat and white T-sh..",
      price: "£30",
      image: "assets/images/image-4-2.png",
    ),
    MenCategoryListModel(
      title: "Gray coat and white T-sh..",
      price: "£30",
      image: "assets/images/image 4.png",
    ),
    MenCategoryListModel(
      title: "Top man black",
      price: "£20",
      image: "assets/images/image 3.png",
    ),
    MenCategoryListModel(
      title: "Deep gray essential regul.",
      price: "£30",
      image: "assets/images/image 2.png",
    ),
    MenCategoryListModel(
      title: "Gray coat and white T-sh..",
      price: "£30",
      image: "assets/images/image 2.png",
    ),
  ];
}
