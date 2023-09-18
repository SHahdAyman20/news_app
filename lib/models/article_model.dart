// the model of article which every article contain from image, title, and subtitle or description
class ArticleModel {
  String? image;
  String title;
  String? subTitle;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
// this factory constructor allow me return object
  // so i return object in named constructor with nullable and non nullable variables
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['content'],
    );
  }
}
