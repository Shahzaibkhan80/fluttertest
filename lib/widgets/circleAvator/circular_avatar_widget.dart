import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  final String imageUrl;
  final double radius;
  const CircularAvatarWidget({
    super.key,
    required this.imageUrl,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imageUrl),
      radius: radius,
      backgroundColor: Colors.grey.shade200,
    );
  }
}
