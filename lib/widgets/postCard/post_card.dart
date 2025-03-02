import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String question;
  final String userName;
  final String location;
  final String userImage;

  const PostCard({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.question,
    required this.userName,
    required this.location,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurStyle: BlurStyle.inner,
                    ),
                  ]),
              child: Row(
                children: [
                  Icon(
                    Icons.category,
                    size: 16,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    category,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 60,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                question,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.red)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(userImage),
                    radius: 20,
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
