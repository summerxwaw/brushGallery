import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/gallery_provider.dart';
import 'screens/pictures_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GalleryProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PicturesScreen(),
      ),
    );
  }
}
