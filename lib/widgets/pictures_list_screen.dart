import 'package:drop/models/picture.dart';
import 'package:drop/providers/gallery_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:drop/repository/pictures_repository.dart';
import 'package:provider/provider.dart';

import '../repository/pictures_repository.dart';
import 'gallery_grids.dart';

class PicturesListScreen extends StatefulWidget {
  @override
  _PicturesListScreenState createState() => _PicturesListScreenState();
}

class _PicturesListScreenState extends State<PicturesListScreen> {

  @override
  Widget build(BuildContext context) {
    PicturesRepository().getSearchResult(context);
    final productsData = Provider.of<GalleryProvider>(context, listen: false);
    List<PictureItems> searchPictures = List();

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          onChanged: (String string) {
            setState(() {
              searchPictures = productsData.pictureContent.where((u) =>
                  (u.name.toLowerCase().contains(string.toLowerCase()) ||
                      u.category.toLowerCase().contains(string.toLowerCase())))
                      .toList();
              productsData.searchPicture(searchPictures);
            });
          },
          style: Theme.of(context).textTheme.subtitle,
          enableInteractiveSelection: false,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: "Введите название или автора",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            contentPadding:
            EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0
            ),
            suffixIcon: Icon(
                Icons.clear,
                color: Colors.black,
            ),
          ),
        ),
      ),
      body: ProductsGrid(),
    );
  }
}
