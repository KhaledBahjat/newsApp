import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewsBuilder extends StatelessWidget {
  const NewsListViewsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService(Dio()).getNews(),
      builder: (context, snapshot) {
        return NewsListView(articles: snapshot.data??[]);
      },
    );
    // return isLoading
    //     ? const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //     ? NewsListView(
    //         articles: articles,
    //       )
    //     : const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //           child: Text(
    //             'Oops! There Was an Error',
    //             style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               color: Colors.red,
    //               fontSize: 30,
    //             ),
    //           ),
    //         ),
    //       );
  }
}
