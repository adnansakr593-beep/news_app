 import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articlesListModel});

  final ArticlesListModel articlesListModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              articlesListModel.iamge??"https://dims.apnews.com/dims4/default/b88fb9d/2147483647/strip/true/crop/3292x1852+0+172/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F99%2Fc7%2Fd5c6ce3b5ef735c92eae49638352%2Fb0799e953fd74b1cb8232dfa646b7603",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            articlesListModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            articlesListModel.description??"No Description",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
