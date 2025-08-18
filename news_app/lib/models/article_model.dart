class ArticleModel {
  final String imageUrl;
  final String title;
  final String description;

  ArticleModel({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      imageUrl: json['image'],
      title: json['title'],
      description: json['description'],
    );
  }
}
