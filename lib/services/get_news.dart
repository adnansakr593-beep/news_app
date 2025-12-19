import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;
  final String category;
  NewsService(this.dio,{required this.category});

  Future<List<ArticlesListModel>> getHeadLinesnews() async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=8ae8ccd2368d4d79bb2995e9a0e1559b&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      List<ArticlesListModel> articlesList = [];

      for (var art in articles) {
        ArticlesListModel articlesModel = ArticlesListModel(
          title: art["title"],
          description: art["description"],
          iamge: art["urlToImage"],
        );
        articlesList.add(articlesModel);
      }

      return articlesList;
    } catch (e) {
      return []; 
    }
  }
}
