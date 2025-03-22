import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/big_news_model.dart';
import 'package:news_app/custom-widgts/big_news.dart';

import '../services/news_services.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key , required this.category});
final String category ;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<BigNewsModel> Big=[] ;
  bool loading =true;
  @override
  void initState() {

    super.initState();
  }
  Future<void> GetNews()async{
    Big = await News_service(Dio()).getnews(category: widget.category);
    loading = false;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(widget.category , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.amber)),
      ),
      body: loading? Center(child: CircularProgressIndicator(),) : Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemBuilder: (context , index){
          return BigNews(big: Big[index] );
        }),
      ),

    );
  }
}
