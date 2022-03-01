import 'splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Challenge 4",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
