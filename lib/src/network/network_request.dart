import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:hodomojo/src/model/main_component.dart';

class NetworkRequest {
  final String baseUrl =
      'http://website-bucket-12234.s3-website-us-east-1.amazonaws.com/api.json';

 Data parseData(String responseBody) {
    var list = json.decode(responseBody)['data']  ;
     print(list['components']);
    Data data = Data.fromJson(list);
 //   Data data = list.map((model) => Data.fromJson(model));
    return data;
  }

  Future<Data> fetchData() async {
      var response = await http.get(Uri.parse(baseUrl));
 
      if (response.statusCode == 200) {
        return parseData(response.body);
      }
}

}
