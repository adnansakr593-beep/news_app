import 'package:flutter/material.dart';
import 'package:news_app/models/row_list_model.dart';
import 'package:news_app/views/catogry_view.dart';

class CatogryWedgit extends StatelessWidget {
   const CatogryWedgit({super.key, required this.modelasset});

  final RowListModel modelasset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) 
            {
              return  CatogryView(category:modelasset.text,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 95,
          width: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(modelasset.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),

          child: Center(
            child: Text(
              modelasset.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
