import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
class NewsTile extends StatelessWidget {

  ArticleModel articleModel;

   NewsTile({Key? key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
       mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            // if every thing is good, will display the image article
            borderRadius: BorderRadius.circular(12),
            child:articleModel.image !=null? Image.network(
                '${articleModel.image}',
              height: MediaQuery.of(context).size.height * 0.35,
              width:double.infinity,
              fit: BoxFit.cover,
            ):
                // but if there is a problem like there is no image in
            // article it will show this photo as a default
            Image.asset(
              'assets/general.png',
              height: MediaQuery.of(context).size.height * 0.35,
              width:double.infinity,
              fit: BoxFit.cover,
            )

          ),
          const SizedBox(
            height: 8,
          ),
          // title of the news
           Text(
            articleModel.title?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          // sub title of the news
           Text(
            articleModel.subTitle?? '',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black38, fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
