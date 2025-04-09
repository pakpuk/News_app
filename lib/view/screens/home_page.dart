import 'package:flutter/material.dart';
import 'package:news_app/models/News_item_model.dart';
import 'package:news_app/view/widgets/Appbar_iconwidget.dart';
import 'package:news_app/view/widgets/carsoulslider_widget.dart';
import 'package:news_app/view/widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppbarIcon(icon: Icons.menu),
              Row(
                children: [
                  AppbarIcon(icon: Icons.search),
                  SizedBox(
                    width: 6,
                  ),
                  AppbarIcon(icon: Icons.notifications),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          const Hometitlewidget(
            title: 'Breaking news',
          ),
          SizedBox(
            height: 8,
          ),
          CarsoulsliderWidget(),
          SizedBox(
            height: 16,
          ),
          Hometitlewidget(title: "Recommandation"),
          SizedBox(
            height: 8,
          )
        ],
      ))),
    );
  }
}
