import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
class NewService{
  final dio = Dio();


  Future<List<ArticleModel>> getNews({required String category}) async{
    try{
      // response from api
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6929a782eeee4868b9bee9e9c6e74f27&category=$category');
// i accept data in a map
      Map<String,dynamic> jsonData= response.data;

      List<dynamic> articles= jsonData['articles'];
// list of object 'ArticleModel' to store in it the list of news contains only image, title and subTitle
      List<ArticleModel> articlesList=[];
// i convert it to list of article 'articlesList' in the ArticleModel shape
      for(var article in articles){

        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return [];
    }
  }
}