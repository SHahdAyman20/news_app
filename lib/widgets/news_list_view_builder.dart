import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {

  final String category;

  const NewsListViewBuilder({
    super.key,
    required this.category
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

// build the response but will call it when i just need not in
// every time i build the app and this more effiecent way than
// i put in in future in FutureBuilder widget
  Future? future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewService().getNews(
        category: widget.category
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // this return the request
      // but will trigger so i want make the future listen to request but put it in another place
        future: future,
        //if every thing is good this request will build UI
      builder: (context,snapshot){
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        }
        // if there is a problem it will show this text
        else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'OOPS, There is something wrong \nPlease try later ',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 33
                ),
              ),
            ),
          );
        }
        // if i wait response it will display the CircularProgressIndicator
        else{
          return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
        }
      },
      );


    //   ************** THIS SOLUTION IS RIGHT BUT USING FUTURE BUILDER WIDGET
    // IS MORE EFFICIENT CUZ THE COD IS SHORTER AND STATELESS WIDGET
    // RATHER THAN STATEFUL WIDGET ****************

    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : const SliverToBoxAdapter(
    //             child: Center(
    //               child: Text(
    //                 'OOPS, There is something wrong \nPlease try later ',
    //                 style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33),
    //               ),
    //             ),
    //           );
  }
}

// List<ArticleModel> articles = [];
// bool isLoading = true;

// @override
// void initState() {
//   super.initState();
//   getGeneralNews();
// }
//
// Future<void> getGeneralNews() async {
//   articles = await NewService().getNews();
//   isLoading = false;
//   setState(() {});
// }
