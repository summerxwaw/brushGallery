import 'package:drop/models/picture.dart';
import 'package:drop/providers/gallery_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<PictureItems>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<GalleryProvider>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
              },
            ),
          ),
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
