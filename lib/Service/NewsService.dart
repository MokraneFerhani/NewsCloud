import 'package:newsapp/Models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async{
    try {
       var response = await dio.get(
           'https://newsaapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');
        Map<String,dynamic> jsonData= response.data;
        List<dynamic> articles=jsonData['articles'];
        List <ArticleModel> articlelist=[];
        for (var article in articles) {
          if (article['urlToImage'] == null || article['title'] == null) continue;   // <- new line
          ArticleModel articleModel=ArticleModel(title: article['title'],
              image: article['urlToImage'],
              subTitle: article['description']);
          articlelist.add(articleModel);}
        return articlelist;}
       catch (e) {
      print('ERROR:$e');
      return [];
        }



    }

  }

