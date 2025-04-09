import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  const AppbarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.grey.withOpacity(0.2)),
      child: Icon(icon),
    );
  }
}
