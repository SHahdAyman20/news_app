import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {

  List<ArticleModel> articles;

   NewsListView({Key? key, required this.articles});

  @override
  Widget build(BuildContext context) {
    // the sliver list == listView.builder
    // i used SliverChildBuilderDelegate to keep up the performance of app
    // to not be forced to build the all news widget in the same time
    // in abbreviation to be lazy in build, that make the performance high and speedy app

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return  NewsTile(articleModel: articles[index],);
        },
      ),
    );

    // ListView.builder(
    //   // shrinkWrap make the list view build all children in the same time and take the expanded spaces 'the height of it'
    //   // but effect on performance of app cuz i will forced to build the all news in the same time
    //   shrinkWrap: true,
    //   physics:const NeverScrollableScrollPhysics(),
    //   itemCount: 4,
    //     itemBuilder: (context , index){
    //       return NewsTile();
    //     }
    // );
  }
}
