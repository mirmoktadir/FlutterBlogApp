import 'package:blogosphere/screens/single_blog_screen.dart';
import 'screens/single_blog_2_screen.dart';
import 'screens/single_blog_3_screen.dart';
import 'screens/single_blog_1_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(Blogosphere());
}

class Blogosphere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SingleBlogScreen.id: (context) => SingleBlogScreen(),
        SingleBlog1Screen.id: (context) => SingleBlog1Screen(),
        SingleBlog2Screen.id: (context) => SingleBlog2Screen(),
        SingleBlog3Screen.id: (context) => SingleBlog3Screen(),
      },
    );
  }
}
