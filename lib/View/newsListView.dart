import '../Models/article_model.dart';
import 'package:flutter/material.dart';

import '../Widgets/news_tile.dart';
class Newslistview extends StatelessWidget{
  final List<ArticleModel> articles;

  Newslistview({required this.articles});

  @override

  Widget build (BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
      childCount: articles.length, (context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    },
    ),
    );


  }
}