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
      categoryName: 'ENTERTAINMENT',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'SCIENCE',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'HEALTH',
    ),

    CategoryModel(
      imageAssetUrl: 'assets/sports.avif',
      categoryName: 'SPORTS',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'TECHNOLOGY',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/business.avif',
      categoryName: 'BUSINESS',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.avif',
      categoryName: 'GENERAL',
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
