import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';
import 'package:news_app/view/widgets/recommandation_item.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritedItems = newsItems.where((element) => element.isFavorite);

    if (favoritedItems.isEmpty) {
      return Center(
        child: Text(
          'No Bookmarks Available!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: favoritedItems
              .map((favoritedItem) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child:
                        RecommandationItemwidget(newsItemModel: favoritedItem),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
