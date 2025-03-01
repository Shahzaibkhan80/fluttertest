import 'package:flutter/material.dart';

import '../circleAvator/circular_avatar_widget.dart';

class CustomButton extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final Widget? icon;
  final Color? color;

  const CustomButton({
    this.imageUrl,
    required this.title,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: imageUrl != null
                  ? CircularAvatarWidget(imageUrl: imageUrl!, radius: 20)
                  : icon,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
