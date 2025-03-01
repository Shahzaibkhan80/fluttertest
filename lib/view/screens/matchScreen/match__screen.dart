import 'package:flutter/material.dart';
import '../../../widgets/postCard/post_card.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Matches",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child:
                  Icon(Icons.notifications_none_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Your Matches 47",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                PostCard(
                  imageUrl: "assets/images/profileimage.png",
                  category: "Travel",
                  question:
                      "If you could live anywhere in the world, where would you pick?",
                  userName: "Miranda Kehlani",
                  location: "Stuttgart",
                  userImage: "assets/images/profileimage.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
