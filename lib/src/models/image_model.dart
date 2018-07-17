class ImageModel {
  int id;
  String url;
  String title;

  // function constructor
  ImageModel(this.id, this.url, this.title);

  // named constructor
  // Map data structure are like JavaScript objects
  // this specific Map data structure accepts keys that are of type String and values of type dynamic
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}