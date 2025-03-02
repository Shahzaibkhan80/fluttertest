import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/matchCard/match_card.dart';

import '../../../widgets/customBottomNav/custom_bottom_nav.dart';

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
              child: Icon(Icons.settings, color: Colors.black),
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'name',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'Shahzaib',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'name',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'name',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'name',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                    MatchCard(
                      imageUrl: 'assets/images/image.jpg',
                      name: 'name',
                      age: 2,
                      location: 'location',
                      matchPercentage: 2,
                      distance: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomBottomNav(),
        ],
      ),
    );
  }
}
