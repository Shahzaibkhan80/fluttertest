import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int age;
  final String location;
  final int matchPercentage;
  final double distance;
  const MatchCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.age,
    required this.location,
    required this.matchPercentage,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 300,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(
            20,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
            ),
          ]),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 270,
            right: 30,
            left: 30,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Text('$matchPercentage% Match'),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      '$distance Km away',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$name  $age',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  location.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
