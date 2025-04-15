import 'package:flutter/material.dart';

import '../../models/News_item_model.dart';

class NewDetailspageBody extends StatelessWidget {
  NewsItemModel newsItems;
  NewDetailspageBody({super.key, required this.newsItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(newsItems.imgurl),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                newsItems.author,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as asd asd asd asd sad asd asd asd asd as',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
