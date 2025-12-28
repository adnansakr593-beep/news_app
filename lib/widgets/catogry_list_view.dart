import 'package:flutter/material.dart';
import 'package:news_app/models/catogry.dart';
import 'package:news_app/models/row_list_model.dart';

// ignore: camel_case_types, must_be_immutable
class Catogry_list_view extends StatelessWidget {
   Catogry_list_view({
    super.key,
  });

  // ignore: non_constant_identifier_names
  List<RowListModel>row_model=
  [
    // RowListModel
    // (image:'assets/images/business.avif' , text: 'Business'),
    RowListModel
    (
      image:'assets/images/entertaiment.avif',
      text: 'Entertainment'
    ),

    RowListModel
    (
      image:'assets/images/health.avif',
      text: 'Health'
    ),

    RowListModel
    (
      image:'assets/images/science.avif',
      text: 'Science'
    ),

    RowListModel
    (
      image:'assets/images/sports.avif',
      text: 'Sports'
    ),

    RowListModel
    (
      image:'assets/images/technology.jpeg',
      text: 'Technology'
    ),

    RowListModel
    (
      image:'assets/images/general.avif',
      text: 'General'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 95,
        child: ListView.builder
        (
          itemCount: row_model.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return  CatogryWedgit(modelasset: row_model[index],);
          }
        ),
      ),
    );
  }
}

