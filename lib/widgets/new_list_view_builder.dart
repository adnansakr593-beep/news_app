import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/get_news.dart';
import 'package:news_app/widgets/new_list_view.dart';


class NewListViewBuilder extends StatefulWidget {
  final String category;
  const NewListViewBuilder({super.key, required this.category});
  
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}
class _NewListViewBuilderState extends State<NewListViewBuilder> {


  // ignore: prefer_typing_uninitialized_variables
  var future;
  
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio(),category:widget.category).getHeadLinesnews();
  }
  @override
  Widget build(BuildContext context) 
  {
    return FutureBuilder<List<ArticlesListModel>>
    (
      future:  future,
      builder: (context,snapshot) 
    {
      if(snapshot.hasData)
      {
        return NewListView(articles: snapshot.data!);
      }

      else if(snapshot.hasError)
      {
        return const SliverToBoxAdapter(
         child: Center(
           child: Text("OPPS , The app is not found data ,try again later"),
         ),
       );
      }

      else 
      {
        return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
      }
    }
    );
  }
}
