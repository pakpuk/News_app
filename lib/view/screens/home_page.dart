import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';
import 'package:news_app/view/screens/news_details_page.dart';
import 'package:news_app/view/widgets/carsoulslider_widget.dart';
import 'package:news_app/view/widgets/recommandation_item.dart';
import 'package:news_app/view/widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              const Hometitlewidget(title: 'Breaking News'),
              const SizedBox(height: 8.0),
              const CarsoulsliderWidget(),
              const SizedBox(height: 16.0),
              const Hometitlewidget(title: 'Recommendation'),
              const SizedBox(height: 8.0),
              ...newsItems
                  .map((newsItem) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: InkWell(
                          onTap: () {
                            final index = newsItem.indexOf(newsItem);

                            Navigator.of(context, rootNavigator: true)
                                .push(
                                  CupertinoPageRoute(
                                    builder: (_) => NewsDetailsPage(
                                      index: index,
                                      newsItems: newsItems,
                                    ),
                                  ),
                                )
                                .then((value) => setState(
                                      () {},
                                    ));
                          },
                          child: RecommandationItemwidget(
                            newsItemModel: newsItem,
                          ),
                        ),
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
