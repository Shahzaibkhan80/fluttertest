import 'package:flutter/material.dart';

class MyStoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/image.jpg"),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text("My Story", style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
