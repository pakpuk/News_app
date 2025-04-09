import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';

class RecommandationItemwidget extends StatelessWidget {
  final NewsItemModel newsItemModel;
  const RecommandationItemwidget({super.key, required this.newsItemModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              newsItemModel.imgurl,
              height: 100,
              fit: BoxFit.cover,
            )),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItemModel.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                newsItemModel.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "${newsItemModel.author}•${newsItemModel.time}",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
