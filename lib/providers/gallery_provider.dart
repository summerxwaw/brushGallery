import 'dart:ui';

import 'package:drop/models/picture.dart';
import 'package:flutter/material.dart';


class GalleryProvider extends ChangeNotifier {
  List<PictureItems> _pictureContent = new List<PictureItems>();
  List<PictureItems> _searchContent = new List<PictureItems>();

  List<PictureItems> get pictureContent {
    return [..._pictureContent];
  }
  List<PictureItems> get searchContent {
    return [..._searchContent];
  }

  void addPicture (List<PictureItems> items) {
   _pictureContent = items;
//   print(_pictureContent);
    notifyListeners();
  }

  void searchPicture (List<PictureItems> items) {
    _searchContent = items;
//   print(_pictureContent);
    notifyListeners();
  }
}