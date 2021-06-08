import 'package:blogosphere/screens/single_blog_screen.dart';
import 'package:blogosphere/screens/single_blog_1_screen.dart';
import 'package:blogosphere/screens/single_blog_2_screen.dart';
import 'package:blogosphere/screens/single_blog_3_screen.dart';
import 'package:flutter/material.dart';
import 'package:blogosphere/components/blog_cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blogosphere/components/data_json.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title;
  int userId;
  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async {
    JsonData jsonData = JsonData();
    await jsonData.getJsonData();
    title = jsonData.title;
    userId = jsonData.userId;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pink[300],
          ),
        ),
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.bars),
          iconSize: 30,
          onPressed: () {},
          color: Colors.pink[300],
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            iconSize: 30,
            onPressed: () {},
            color: Colors.pink[300],
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              BlogsCard(
                blogText: '$title',
                img1: 'b.png',
                img2: 'f.png',
                route: SingleBlogScreen.id,
                userId: '$userId',
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'c.png',
                img2: 'f.png',
                route: SingleBlog1Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'd.png',
                img2: 'f.png',
                route: SingleBlog2Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'b.png',
                img2: 'f.png',
                route: SingleBlog3Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'c.png',
                img2: 'f.png',
                route: SingleBlogScreen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'd.png',
                img2: 'f.png',
                route: SingleBlog1Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'b.png',
                img2: 'f.png',
                route: SingleBlog2Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'c.png',
                img2: 'f.png',
                route: SingleBlog3Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'd.png',
                img2: 'f.png',
                route: SingleBlogScreen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'b.png',
                img2: 'f.png',
                route: SingleBlog1Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'c.png',
                img2: 'f.png',
                route: SingleBlog2Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'd.png',
                img2: 'f.png',
                route: SingleBlog3Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'b.png',
                img2: 'f.png',
                route: SingleBlogScreen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'c.png',
                img2: 'f.png',
                route: SingleBlog1Screen.id,
              ),
              BlogsCard(
                blogText: '$title',
                userId: '$userId',
                img1: 'd.png',
                img2: 'f.png',
                route: SingleBlog2Screen.id,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.pink[900],
        unselectedItemColor: Colors.pink[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.folder),
            label: 'folder',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'love',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'people',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
      ),
    );
  }
}
