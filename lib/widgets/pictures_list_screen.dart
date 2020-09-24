import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:drop/repository/pictures_repository.dart';

import '../repository/pictures_repository.dart';
import 'gallery_grids.dart';

class PicturesListScreen extends StatefulWidget {
  @override
  _PicturesListScreenState createState() => _PicturesListScreenState();
}

class _PicturesListScreenState extends State<PicturesListScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    PicturesRepository().getSearchResult(context);

    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ProductsGrid(),
    );
  }
}
