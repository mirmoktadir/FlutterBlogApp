import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blogosphere/components/data_json.dart';

class SingleBlog3Screen extends StatefulWidget {
  static const String id = 'SingleBlog3Screen';

  @override
  _SingleBlog3ScreenState createState() => _SingleBlog3ScreenState();
}

class _SingleBlog3ScreenState extends State<SingleBlog3Screen> {
  String title;
  int userId;
  String body;
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
    body = jsonData.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink[300]),
        title: Text(
          'Health',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pink[300],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.headphonesAlt),
            onPressed: () {},
            iconSize: 30,
            color: Colors.pink[300],
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.heart),
            onPressed: () {},
            iconSize: 30,
            color: Colors.pink[300],
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.shareAlt),
            onPressed: () {},
            iconSize: 30,
            color: Colors.pink[300],
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 600,
                  child: Image.asset(
                    'images/b.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        '$title',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('images/f.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'id: $userId     Mir Moktadir',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Flexible(
                            child: Text(
                              '4 min read',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '$body',
                    style: TextStyle(
                        fontSize: 20, height: 1.5, letterSpacing: 1.3),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
