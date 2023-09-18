import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';


class CategoryView extends StatelessWidget {

  // category will control on the news will appear
  final String category;

  CategoryView({super.key, required this.category });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'assets/news.png',
              ),
              height: 60,
              width: 60,
            ),
            Text(
              'Latest',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xff80735a),
                  fontSize: 33),
            ),
            Text(
              'News',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xff506B4F),
                  fontSize: 40),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }

}