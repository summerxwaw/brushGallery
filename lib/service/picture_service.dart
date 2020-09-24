//import 'dart:ui';
//
//import 'package:drop/models/pictures.dart';
//import 'package:drop/network/get_picture_request.dart';
//
//class PictureService {
//  static Future<List<Pictures>> getPictures() async {
//    var response = await GetGalleryRequest.send();
//
//    if (response.statusCode > 200 || response.statusCode < 100) {
//      return "Status Error";
//    }
//
//    if (response.body == null) {
//      return 'Response body null';
//    }
//
//    return response.body;
//  }
//}