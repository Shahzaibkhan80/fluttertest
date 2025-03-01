import 'package:flutter/material.dart';
import '../../../widgets/circleAvator/circular_avatar_widget.dart';

class StackCircle extends StatelessWidget {
  final String imageUrl;

  const StackCircle({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 280,
          height: 280,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.shade300,
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white70,
          ),
        ),
        CircularAvatarWidget(imageUrl: imageUrl, radius: 35),
        Positioned(
          top: 20,
          left: 20,
          child: CircularAvatarWidget(imageUrl: imageUrl, radius: 20),
        ),
        Positioned(
          top: 40,
          right: 10,
          child: CircularAvatarWidget(imageUrl: imageUrl, radius: 20),
        ),
        Positioned(
          top: 235,
          right: 50,
          child: CircularAvatarWidget(imageUrl: imageUrl, radius: 20),
        ),
        Positioned(
          top: 215,
          left: 22,
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.home, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
