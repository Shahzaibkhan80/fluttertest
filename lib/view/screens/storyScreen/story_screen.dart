import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../view_modal/generalProvider/generalController.dart';
import '../../../widgets/customBottomNav/custom_bottom_nav.dart';
import '../../../widgets/postCard/post_card.dart';
import '../../../widgets/story_widget/story.dart';
import '../../../widgets/story_widget/story_widget.dart';
import '../../../widgets/tabWidget/custom_tab_bar.dart';
import '../matchScreen/match__screen.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storyController = Provider.of<GeneralProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Friends",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyController.stories.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return MyStoryWidget();
                  } else {
                    final story = storyController.stories[index - 1];
                    return Story(
                      name: story["name"]!,
                      imageUrl: story["image"]!,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 10),
            Center(child: CustomTabBar()),
            Expanded(
              child: ListView(
                children: [
                  PostCard(
                    imageUrl: "assets/images/profileimage.png",
                    category: "Missing",
                    question:
                        "If you could live anywhere in the world, where would you pick?",
                    userName: "Waqas ",
                    location: "Pakistan",
                    userImage: "assets/images/image.jpg",
                  ),
                  PostCard(
                    imageUrl: "assets/images/profileimage.png",
                    category: "Missing",
                    question:
                        "If you could live anywhere in the world, where would you pick?",
                    userName: "Waqas ",
                    location: "Pakistan",
                    userImage: "assets/images/image.jpg",
                  ),
                  PostCard(
                    imageUrl: "assets/images/profileimage.png",
                    category: "Missing",
                    question:
                        "If you could live anywhere in the world, where would you pick?",
                    userName: "Waqas ",
                    location: "Pakistan",
                    userImage: "assets/images/image.jpg",
                  ),
                ],
              ),
            ),
            CustomBottomNav(),
          ],
        ),
      ),
    );
  }
}
