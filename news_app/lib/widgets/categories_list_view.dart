import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategorieslistView extends StatelessWidget {
  CategorieslistView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
      imageAssetUrl: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'Health',
    ),

    CategoryModel(
      imageAssetUrl: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.avif',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CategoryCard(category: categories[index]),
        ),
      ),
    );
  }
}
