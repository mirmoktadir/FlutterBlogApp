import 'package:flutter/material.dart';

class BlogsCard extends StatelessWidget {
  BlogsCard(
      {@required this.blogText,
      @required this.img1,
      @required this.img2,
      this.userId,
      this.route});
  final String blogText;
  final String userId;
  final img1;
  final img2;
  final route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Image.asset('images/' + img1),
              ),
              Flexible(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        blogText,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/' + img2),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Id:$userId'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mir Moktadir',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
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
