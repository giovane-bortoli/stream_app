// ignore_for_file: public_member_api_docs, sort_constructors_first
class MoviesModel {
  final String id;
  final String createdAt;
  final String description;
  final String url;
  final String title;
  MoviesModel({
    required this.id,
    required this.createdAt,
    required this.description,
    required this.url,
    required this.title,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'],
      createdAt: json['createdAt'],
      description: json['description'],
      url: json['url'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['description'] = description;
    data['url'] = url;
    data['title'] = title;

    return data;
  }
}
