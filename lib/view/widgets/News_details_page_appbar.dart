import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';
import 'package:news_app/view/widgets/Appbar_iconwidget.dart';

class NewsDetailsPageAppbar extends StatelessWidget {
  final NewsItemModel newsItem;
  const NewsDetailsPageAppbar({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight: size.height * 0.4,
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: AppbarIcon(
          icon: Icons.chevron_left,
          iconsize: 30,
        ),
      ),
      leadingWidth: 40,
      actions: [
        AppbarIcon(
          icon: Icons.bookmark_border_outlined,
        ),
        SizedBox(
          width: 6,
        ),
        AppbarIcon(
          icon: Icons.menu_sharp,
        ),
      ],
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(children: [
          Positioned.fill(
            child: Image.network(
              newsItem.imgurl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Opacity(
            opacity: 0.15,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.black),
            ),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    newsItem.category,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                newsItem.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "${newsItem.author}•${newsItem.time}",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ]),
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          )),
    );
  }
}
