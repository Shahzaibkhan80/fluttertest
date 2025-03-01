import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  final String imageUrl;

  const Story({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.pink),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
          SizedBox(height: 4),
          Text(name, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
