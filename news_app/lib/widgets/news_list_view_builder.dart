import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewsBuilder extends StatefulWidget {
  const NewsListViewsBuilder({
    super.key,
  });

  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : NewsListView(
            articles: articles,
          );
  }
}
