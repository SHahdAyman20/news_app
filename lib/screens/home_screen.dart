import 'package:flutter/material.dart';
import 'package:news_app/widgets/ctaegories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
        // i use it to customize 2 scrollable list => in vertical and horizontal way
        body:  const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            // Creates a sliver 'child'  that contains a single box widget.
            SliverToBoxAdapter(child: CategoriesListView()),
            NewsListViewBuilder(category: 'general',)
          ],
        )
        // Column(
        //   children: [
        //     CategoriesListView(),
        //     Expanded(child: NewsListView())
        //   ],
        // )
        );
  }
}
