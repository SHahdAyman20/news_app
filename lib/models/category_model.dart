// this class contain the image of every category and its name which i will use
// when i call back the api to response with the new category when i click on
// its card
class CategoryModel {
  final String image;
  final String categoryName;

  const CategoryModel({
    required this.image,
    required this.categoryName,
  });
}
