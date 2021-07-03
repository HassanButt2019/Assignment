import 'package:hodomojo/src/model/components.dart';




class Data {
  String title;
  String type;
  List<Components> components;
  String coverUrl;

  Data({this.title, this.type, this.components, this.coverUrl});

  Data.fromJson(Map<String, dynamic> json) {
    // print("IN DATA");
    // print(json);
    title = json['title'];
    type = json['type'];
    if (json['components'] != null) {
      components = [];
      json['components'].forEach((v) {
        components.add(Components.fromJson(v));
      });
      print(components.length);
    }
    coverUrl = json['coverUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    if (this.components != null) {
      data['components'] = this.components.map((v) => v.toJson()).toList();
    }
    data['coverUrl'] = this.coverUrl;
    return data;
  }
}

