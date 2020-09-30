import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  String type;
  String link;
  String complexity;
  String category;
  String size;
  int stock;
  String price;

  DetailScreen(
    this.image,
    this.name,
    this.type,
    this.link,
    this.complexity,
    this.category,
    this.size,
    this.stock,
    this.price,
  );

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void _saveNetworkImage(String imageUrl) async {
    GallerySaver.saveImage(imageUrl, albumName: 'Media').then((bool success) {
      setState(() {
        print('image saved!');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        actions: [
          InkWell(
            onTap: () => _saveNetworkImage(widget.image),
            child: Icon(Icons.save),
          ),
        ],
      ),
      body: Column(children: <Widget>[
        Container(
          height: 350,
          width: double.infinity,
          child: GestureDetector(
              child: Image.network(
                widget.image,
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 400.0,
          width: 380.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.amberAccent,
              width: 5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text(widget.name,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                    Spacer(),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text('На складе в наличие: ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )),
                    Opacity(
                      opacity: 0.6,
                      child: Text(widget.stock.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                    Spacer(),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text('Сложность: ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )),
                    Opacity(
                      opacity: 0.6,
                      child: Text(widget.complexity,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                    Spacer(),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text('Цена: ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )),
                    Opacity(
                      opacity: 0.6,
                      child: Text(widget.price,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                    Spacer(),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text('Категория: ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )),
                    Opacity(
                      opacity: 0.6,
                      child: Text(widget.category,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                    Spacer(),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Text('Размер: ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )),
                    Opacity(
                      opacity: 0.6,
                      child: Text(widget.size,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
