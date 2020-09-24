import 'package:drop/repository/pictures_repository.dart';
import 'package:drop/widgets/pictures_list_screen.dart';
import 'package:flutter/material.dart';

class PicturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Картинки'),
      ),
      body: PicturesListScreen(),
    );
  }
}
