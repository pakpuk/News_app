import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';

class NewsDetailsPage extends StatefulWidget {
  final NewsItemModel newsItems;
  const NewsDetailsPage({super.key, required this.newsItems});

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
