import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
                    article.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            article.title,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            article.description,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
