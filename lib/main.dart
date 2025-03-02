import 'package:flutter/material.dart';
import 'package:fluttertest/view/screens/onboardingscreen.dart/onboardingScreen.dart';
import 'package:provider/provider.dart';

import 'view_modal/multiprovider/multiprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Onboardingscreen(),
      ),
    );
  }
}
