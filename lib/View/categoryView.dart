import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget{
  final String category;
  const CategoryView({required this.category});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(

      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title:Text(
        category,
        style: TextStyle(
          color:Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),

    ),
    ),
    body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        NewsListViewBuilder(category: category),
      ],
    ),
  );
  }



}