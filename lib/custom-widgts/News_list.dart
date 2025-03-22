import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/big_news_model.dart';
import 'package:news_app/services/news_services.dart';

import 'big_news.dart';

class News_list extends StatefulWidget {
  News_list({super.key,});

  @override
  State<News_list> createState() => _News_listState();
}

class _News_listState extends State<News_list> {
   List<BigNewsModel> Big = [];
   bool loading = true  ;
@override
  void initState() {
    super.initState();
    GetNews();

  }
  Future<void> GetNews()async{
    Big = await News_service(Dio()).getnews(category: "general");
    loading = false;
    setState(() {

    });
  }
  @override

  Widget build(BuildContext context) {
    return loading? Center(child: CircularProgressIndicator()) : ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Big.length,
        itemBuilder: (context, index) {
          return BigNews(big: Big[index]);
        }
    );
  }
}