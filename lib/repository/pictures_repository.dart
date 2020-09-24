import 'dart:convert';

import 'package:drop/models/pictures.dart';
import 'package:drop/network/get_picture_request.dart';
import 'package:drop/service/picture_service.dart';
import 'package:http/http.dart' as http;

List<Pictures> pictureContent = new List<Pictures>();

class PicturesRepository {

  void getSearchResult() async {
    var response = await http.get('https://api.brushme.com.ua/fc8ac8bed69bea5f2f183eddd51f01c9/public/products/json/');

    var jsonData = json.decode(utf8.decode(response.bodyBytes));

    if ( jsonData.length > 0){
      for (var i = 0; i < jsonData['products'].length; i++) {
        var id = jsonData['products'][i]['id'];
        var stock = jsonData['products'][i]['stock'];
        var image = jsonData['products'][i]['image'];
        var article = jsonData['products'][i]['article'];
        var name = jsonData['products'][i]['name'];
        var price = jsonData['products'][i]['price'];
        var type = jsonData['products'][i]['ptype'];
        var parent = jsonData['products'][i]['parent'];
        var link = jsonData['products'][i]['link'];
        var complexity = jsonData['products'][i]['complexity'];
        var category = jsonData['products'][i]['category'];

        pictureContent.add(
            Pictures(
              id: id,
              stock: stock,
              image: image,
              article: article,
              name: name,
              price: price.toString(),
              type: type,
              parent: parent,
              link: link,
              complexity: complexity,
              category: category,
            ),
          );
      }
    }
  }

}