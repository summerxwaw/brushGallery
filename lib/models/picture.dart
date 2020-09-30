import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PictureItems with ChangeNotifier {
  int id, stock;
  String image;
  String article;
  String name;
  String price;
  String type;
  String parent;
  String link;
  String complexity;
  String category;
  String size;

  PictureItems(
      {@required this.id,
      @required this.stock,
      @required this.image,
      @required this.article,
      @required this.name,
      @required this.price,
      @required this.type,
      @required this.parent,
      @required this.link,
      @required this.complexity,
      @required this.category,
      @required this.size
      });

  factory PictureItems.fromJson(Map<String, dynamic> jsonData) => PictureItems(
        id: jsonData['id'],
        stock: jsonData['stock'],
        image: jsonData['image'],
        article: jsonData['article'],
        name: jsonData['name'],
        price: jsonData['price'].toString(),
        type: jsonData['ptype'],
        parent: jsonData['parent'],
        link: jsonData['link'],
        complexity: jsonData['complexity'],
        category: jsonData['category'],
        size: jsonData['size'],
      );
}
