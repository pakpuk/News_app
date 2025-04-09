import 'package:flutter/material.dart';

class Hometitlewidget extends StatelessWidget {
  final String title;

  const Hometitlewidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "View all",
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
  }
}
