import 'dart:convert';

import 'package:drop/models/pictures.dart';
import 'package:drop/network/get_picture_request.dart';
import 'package:drop/providers/gallery_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

List<Pictures> pictureContent = new List<Pictures>();

class PicturesRepository {

  void getSearchResult(BuildContext context) async {
    var response = await http.get('https://api.brushme.com.ua/fc8ac8bed69bea5f2f183eddd51f01c9/public/products/json/');

    var jsonData = json.decode(utf8.decode(response.bodyBytes));

    if ( jsonData.length > 0){
      Provider.of<GalleryProvider>(context).addPicture(jsonData);
    }
  }

}