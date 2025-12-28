import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';

class CatogryView extends StatelessWidget {
  const CatogryView({super.key,required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView
        (
          slivers: 
          [
             NewListViewBuilder(category: category,),
          ],
        ),
      ),
    );
  }
}