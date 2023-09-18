import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
// all categories
    CategoryModel(
      image: 'assets/entertainment.png',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/Sport.png',
        categoryName: 'sport'
    ),
    CategoryModel(
      image: 'assets/science.png',
        categoryName: 'science'
    ),
    CategoryModel(
      image: 'assets/health.png',
        categoryName: 'health'
    ),
    CategoryModel(
      image: 'assets/technology.png',
        categoryName: 'technology'
    ),
    CategoryModel(
      image: 'assets/business.png',
        categoryName: 'business'
    ),
    CategoryModel(
        image: 'assets/general news.png',
        categoryName: 'general'
    ),

  ];
// list view display categories in horizontal way in card shape
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
