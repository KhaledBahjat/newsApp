import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CategoryView(
            category: category.categoryName,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(   
            fit: BoxFit.fill,
            image: AssetImage(category.imageAssetUrl),
          ),
        ),
        child: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
