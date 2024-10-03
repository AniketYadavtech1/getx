 import 'dart:convert';

import 'package:getx_complete_tutorial/model/appmodel.dart';
import 'package:http/http.dart' as http;

class AppService {
  Future<List<AppModel>> fetchData() async {
    const apiUrl = 'https://jsonplaceholder.typicode.com/photos';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      // print('Response body: ${response.body}');
      var data1 = response.body;
      print(data1);

      return data.map((item) => AppModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
