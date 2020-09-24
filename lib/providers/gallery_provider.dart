import 'package:flutter/material.dart';

import '../models/pictures.dart';

class GalleryProvider extends ChangeNotifier {
  List<Pictures> _pictureContent = new List<Pictures>();

  List<Pictures> get pictureContent {
    return [..._pictureContent];
  }

  void addPicture (var jsonData) {
    for (var i = 0; i < jsonData['products'].length; i++) {
      pictureContent.add(
        Pictures.fromJson(
          jsonData['products'][i],
        ),
      );
    }
  }
}