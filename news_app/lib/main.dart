import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  getHttp();
  runApp(const NewsApp());
}

final dio = Dio();
void getHttp() async {
  final response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=bd1a19763bf845a5942d2a9583d2eb06',
  );
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
