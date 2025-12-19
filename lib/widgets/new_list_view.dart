//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/coulmn_list_cat.dart';

// ignore: must_be_immutable
class NewListView extends StatelessWidget 
{
   NewListView({super.key,required this.articles});


  List<ArticlesListModel> articles = [];
  @override
  Widget build(BuildContext context) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Newstile(articlesListModel: articles[index]),
            );
          },
          childCount: articles.length,
        ),
      );
    }
}

