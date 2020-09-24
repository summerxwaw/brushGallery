import 'package:flutter/material.dart';

class Pictures {
  int id, stock;
  String image, article, name, price, type, parent, link, complexity, category;

  Pictures({
    this.id,
    this.stock,
    this.image,
    this.article,
    this.name,
    this.price,
    this.type,
    this.parent,
    this.link,
    this.complexity,
    this.category
  });

  factory Pictures.fromJson(Map<String, dynamic> jsonData) => Pictures(
    id: jsonData['products']['id'],
    stock: jsonData['products']['stock'],
    image: jsonData['products']['image'],
    article: jsonData['products']['article'],
    name: jsonData['products']['name'],
    price: jsonData['products']['price'],
    type: jsonData['products']['ptype'],
    parent: jsonData['products']['parent'],
    link: jsonData['products']['link'],
    complexity: jsonData['products']['complexity'],
    category: jsonData['products']['category'],
    );
}
