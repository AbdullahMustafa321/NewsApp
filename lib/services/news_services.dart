import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticlesMosdel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get('https://newsdata.io/api/1/news?apikey=pub_400267d63fc28021df74c71a921bb6f2eff17&country=eg&language=ar&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<ArticlesMosdel> articlesList = [];
      for (var article in articles) {
        ArticlesMosdel articles = ArticlesMosdel(
          title: article['title'],
          subtitle: article['description'],
          image: article['image_url'],
          url: article['source_url']
        );
        articlesList.add(articles);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
