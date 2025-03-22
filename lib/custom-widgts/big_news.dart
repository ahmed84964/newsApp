import 'package:flutter/material.dart';
import 'package:news_app/Models/big_news_model.dart';

class BigNews extends StatelessWidget {
  final BigNewsModel big ;
  BigNews({required this.big});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              big.imageUrl?? "https://plus.unsplash.com/premium_photo-1688561383440-feef3fee567d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YnJlYWtpbmclMjBuZXdzfGVufDB8fDB8fHww",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            big.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (big.subtitle.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                big.subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
