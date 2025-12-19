
import 'package:flutter/material.dart';
import 'package:news_app/widgets/catogry_list_view.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';
//import 'package:news_app/widgets/new_list_view.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("News ", style: TextStyle(color: Colors.black)),
            Text("Cloud", style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          physics: ScrollPhysics(),
          slivers: 
          [
            
            SliverToBoxAdapter(child: Catogry_list_view()),

            SliverToBoxAdapter(child: SizedBox(height: 24)),

            NewListViewBuilder(category: 'general',)
          ],
        ),
      ),
    );
  }
}


