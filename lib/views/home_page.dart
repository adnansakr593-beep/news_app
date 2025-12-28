import 'package:flutter/material.dart';
import 'package:news_app/widgets/catogry_list_view.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';
//import 'package:news_app/widgets/new_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
        
            SliverToBoxAdapter(child:const SizedBox(height: 15,) ,),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "News ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Cloud",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child:const SizedBox(height: 15,) ,),
                
            SliverToBoxAdapter(child: Catogry_list_view()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            NewListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
