import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Service/NewsService.dart';

import '../View/newsListView.dart';

class NewsListViewBuilder extends StatefulWidget{
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;
  Dio d=new Dio();
  @override
  void initState() {
    super.initState();

    future = NewsService(d).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newslistview(
              articles: snapshot.data!,
            );
          }
          else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops was an error,try later'),
            );
          }
          else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}