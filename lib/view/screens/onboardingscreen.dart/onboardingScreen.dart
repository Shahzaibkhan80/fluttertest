import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/stackCircle/stackCircle.dart';

import '../../../widgets/custom_button/custom_button.dart';
import '../storyScreen/story_screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() {
      Future.delayed(Duration(seconds: 5), () {
        if (context.mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => StoryScreen()),
          );
        }
      });
    });
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StackCircle(imageUrl: "assets/images/image.jpg"),
              SizedBox(height: 15),
              Text(
                "  Let's meet new \npeople around you",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              CustomButton(
                title: "Login with phone",
                icon: Icon(Icons.phone_in_talk, color: Colors.blue),
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              CustomButton(
                title: "Login with Google",
                imageUrl: "assets/images/google.png",
                color: Colors.grey,
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
