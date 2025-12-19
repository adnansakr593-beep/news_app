import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';

void main() 
{
  runApp(NewApp());
}



class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
        home: HomePage(), 
        debugShowCheckedModeBanner: false,
    );
  }
}
