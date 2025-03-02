import 'package:flutter/material.dart';
import 'package:fluttertest/view/screens/matchScreen/match__screen.dart';
import 'package:provider/provider.dart';

import '../../view/screens/storyScreen/story_screen.dart';
import '../../view_modal/generalProvider/generalController.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(context, Icons.home, 0),
            buildNavItem(context, Icons.search, 1),
            buildNavItem(context, Icons.add, 2),
            buildNavItem(context, Icons.person, 3),
            buildNavItem(context, Icons.chat_bubble_outline, 4),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(BuildContext context, IconData icon, int index) {
    final bottomNavController = Provider.of<GeneralProvider>(context);

    return GestureDetector(
      onTap: () {
        if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatchScreen(),
            ),
          );
        } else if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryScreen(),
            ),
          );
        }
        bottomNavController.setTabIndex(index);
      },
      child: Container(
        width: 40,
        height: 80,
        decoration: BoxDecoration(
          color: bottomNavController.selectedIndex == index
              ? Colors.blue
              : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: bottomNavController.selectedIndex == index
              ? Colors.white
              : Colors.grey.shade700,
          size: 22,
        ),
      ),
    );
  }
}
