import 'dart:convert';

import 'package:http/http.dart' as http;

class JsonData {
  String title;
  int userId;
  String body;
  Future<void> getJsonData() async {
    http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    if (response.statusCode == 200) {
      String data = response.body;

      var titleData = jsonDecode(data)[0]['title'];
      var userData = jsonDecode(data)[0]['userId'];
      var bodyData = jsonDecode(data)[0]['body'];
      body = bodyData;
      title = titleData;
      userId = userData;
    } else {
      print(response.statusCode);
    }
  }
}
