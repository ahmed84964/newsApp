import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/Models/big_news_model.dart';
class News_service {
  Dio dio;
  News_service(this.dio);
  Future<List<BigNewsModel>> getnews({required String category}) async{
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=e866c407dcd84ff9b96bf5ead6da20a1"
    );
    Map<String ,dynamic> jasonData = response.data;
    List<dynamic> articles = jasonData["articles"];
    List< BigNewsModel> articleList =[];
    for(var article in articles){
      BigNewsModel temp = BigNewsModel(
          title: article["title"],
          subtitle: article["description"],
          imageUrl: article["urlToImage"]
      );
      log("$article");
      articleList.add(temp);
    }
    return articleList;
  }
}