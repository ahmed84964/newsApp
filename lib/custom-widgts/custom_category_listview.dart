import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/views/category_view.dart';

import 'news_catrgory.dart';

class custom_category_listview extends StatelessWidget {
  custom_category_listview({super.key});
  final List<Category_Model> category = [
    Category_Model(
      Category_name: "general",
      imgurl:
          'https://plus.unsplash.com/premium_photo-1688561384438-bfa9273e2c00?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    Category_Model(
      Category_name: "business",
      imgurl:
          'https://plus.unsplash.com/premium_photo-1681487769650-a0c3fbaed85a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZWNvbm9teXxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Category_Model(
      Category_name: "entertainment",
      imgurl:
          'https://images.unsplash.com/photo-1586899028174-e7098604235b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8RW50ZXJ0YWlubWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Category_Model(
      Category_name: "health",
      imgurl:
          'https://plus.unsplash.com/premium_photo-1673953509975-576678fa6710?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Category_Model(
      Category_name: "science",
      imgurl:
          'https://plus.unsplash.com/premium_photo-1661432575489-b0400f4fea58?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8U2NpZW5jZXxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Category_Model(
      Category_name: "sports",
      imgurl:
          'https://images.unsplash.com/photo-1517649763962-0c623066013b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8U3BvcnRzfGVufDB8fDB8fHww',
    ),
    Category_Model(
      Category_name: "technology",
      imgurl:
          'https://plus.unsplash.com/premium_photo-1683120966127-14162cdd0935?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => CategoryView(category: category[index].Category_name,)));
            },
              child: NewsCategory(category_model: category[index])
          );
        },
      ),
    );
  }
}
