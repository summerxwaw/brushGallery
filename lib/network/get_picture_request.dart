import 'dart:convert';

import 'package:http/http.dart' as http;
import '../res/consts.dart';

class GetGalleryRequest {
  static Future<http.Response> send() async {
    return await http.get(Constants.PICTURE_URL);
  }
}