import 'package:drop/models/picture.dart';
import 'package:drop/providers/gallery_provider.dart';
import 'package:drop/widgets/gallery_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatefulWidget {

  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<GalleryProvider>(context, listen: false);
    final products = productsData.pictureContent;
    final search = productsData.searchContent;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: search.length > 0 ? search.length : products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: search.length > 0 ? search[i] : products[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
