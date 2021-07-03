class Components {
  String type;
  String url;
  String title;
  String desc;

  Components({this.type, this.url, this.title, this.desc});

  Components.fromJson(Map<String, dynamic> json) {
    print('The Description     = >');
    print( json[0]);
    type = json['type'];
    url = json['url'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}