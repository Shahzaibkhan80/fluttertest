import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../view_modal/generalProvider/generalController.dart';
import '../../../widgets/postCard/post_card.dart';
import '../../../widgets/story_widget/story.dart';
import '../../../widgets/story_widget/story_widget.dart';
import '../../../widgets/tabWidget/custom_tab_bar.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storyController = Provider.of<GeneralProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Friends",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
