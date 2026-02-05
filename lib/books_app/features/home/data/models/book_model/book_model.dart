import 'dart:convert';

import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String authors;
  final String image;
  final String url;

  const BookModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.image,
    required this.url,
  });

  factory BookModel.fromMap(Map<String, dynamic> data) => BookModel(
        id: data['id'] as String,
        title: data['title'] as String,
        subtitle: data['subtitle'] as String,
        authors: data['authors'] as String,
        image: data['image'] as String,
        url: data['url'] as String,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'subtitle': subtitle,
        'authors': authors,
        'image': image,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookModel].
  factory BookModel.fromJson(String data) {
    return BookModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BookModel] to a JSON string.
  String toJson() => json.encode(toMap());

  BookModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? authors,
    String? image,
    String? url,
  }) {
    return BookModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      authors: authors ?? this.authors,
      image: image ?? this.image,
      url: url ?? this.url,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title, subtitle, authors, image, url];
}
