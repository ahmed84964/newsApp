import 'package:flutter/material.dart';
import 'package:news_app/Models/big_news_model.dart';

import 'big_news.dart';

class News_list extends StatelessWidget {
  News_list({super.key,});
  final List<BigNewsModel> Big = [
    BigNewsModel(title: 'Weather Alert: Thunderstorms and Heavy Rain in Egypt', subtitle: 'Warnings from meteorological authorities to prepare for weather fluctuations', imageUrl: 'https://plus.unsplash.com/premium_photo-1726818265070-c08eb719d77c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8VGh1bmRlciUyMHN0b3JtfGVufDB8fDB8fHww'),
    BigNewsModel(title: 'Rising Food Prices in Markets', subtitle: 'The impact of inflation on citizens purchasing power', imageUrl: 'https://plus.unsplash.com/premium_photo-1686754184752-e56ecf1f4b48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fFJpc2luZyUyMEZvb2QlMjBQcmljZXMlMjBpbiUyME1hcmtldHN8ZW58MHx8MHx8fDA%3D'),
    BigNewsModel(title: 'Opening of the High-Speed Electric Train Project in Cairo', subtitle: 'A step towards improving transportation and reducing congestion', imageUrl: 'https://plus.unsplash.com/premium_photo-1661962538140-8985795becc1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8RWxlY3RyaWMlMjBUcmFpbnxlbnwwfHwwfHx8MA%3D%3D'),
    BigNewsModel(title: 'Ramadan Celebrations Across Various Governorates', subtitle: 'Communities come together for iftar gatherings and cultural events despite rising prices', imageUrl: 'https://images.unsplash.com/photo-1577214407836-1f3a0604ecb2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UmFtYWRhbnxlbnwwfHwwfHx8MA%3D%3D'),
    BigNewsModel(title: 'New Projects in Renewable Energy Sector', subtitle: 'Egypt aims to increase the share of clean energy to 20% by 2030', imageUrl: 'https://plus.unsplash.com/premium_photo-1678865041454-9f04d2ad1734?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8UmVuZXdhYmxlJTIwRW5lcmd5JTIwU2VjdG9yfGVufDB8fDB8fHww'),
    BigNewsModel(title: 'Egypt Launches New Digital Education Initiative', subtitle: 'Aiming to enhance learning experiences and access to resources for students nationwide', imageUrl: 'https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RGlnaXRhbCUyMEVkdWNhdGlvbnxlbnwwfHwwfHx8MA%3D%3D')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: Big.length,
            itemBuilder: (context, index) {
              return BigNews(big: Big[index]);
            }
        );
  }
}