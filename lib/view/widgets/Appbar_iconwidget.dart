import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconsize;
  final VoidCallback? onTap;
  const AppbarIcon({
    super.key,
    required this.icon,
    this.size = 40,
    this.iconsize = 30,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.grey.withOpacity(0.2)),
      child: Icon(icon, size: iconsize),
    );
  }
}
