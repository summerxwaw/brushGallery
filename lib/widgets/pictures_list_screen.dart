import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:drop/repository/pictures_repository.dart';

class PicturesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (pictureContent.length <= 0) {
      return Container(
        child: Center(
          child: SpinKitFadingCircle(
            color: Colors.black45,
            size: 70.0,
          ),
        ),
      );
    } else {
      return ListView.builder(
          itemCount: pictureContent == null ? 0 : pictureContent.length,
          // ignore: missing_return
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                    title: new Card(
                      elevation: 1.0,
                      child: new Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              pictureContent[index].image,
                              width: 200.0,
                              height: 200.0,
                            ),
                            Row(children: <Widget>[
                              Flexible(
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Wrap(
                                      children: <Widget>[
                                        Padding(
                                            child: Text(
                                              pictureContent[index]
                                                  .name,
                                              style: (TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight
                                                    .bold,
                                                fontStyle: FontStyle
                                                    .italic,
                                              )),
                                            ),
                                            padding: EdgeInsets.all(1.0)
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                            child: Text(
                                              pictureContent[index]
                                                  .article,
                                              textAlign: TextAlign
                                                  .right,
                                              style: (TextStyle(
                                                fontSize: 25,
                                                color: Colors
                                                    .lightBlueAccent,
                                                fontStyle: FontStyle
                                                    .italic,
                                              )),
                                            ),
                                            padding: EdgeInsets.only(top: 5.0)
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                            child: Text(
                                              pictureContent[index]
                                                  .category,
                                              textAlign: TextAlign
                                                  .right,
                                              style: (TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight
                                                    .bold,
                                                fontStyle: FontStyle
                                                    .italic,
                                              )),
                                            ),
                                            padding: EdgeInsets.only(top: 5.0)
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                                margin: EdgeInsets
                                                    .only(
                                                    left: 90.0)),
                                            Padding(
                                              child: Text(
                                                pictureContent[index]
                                                    .article,
                                                textAlign: TextAlign
                                                    .right,
                                                style: (TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight
                                                      .bold,
                                                  fontStyle: FontStyle
                                                      .italic,
                                                )),
                                              ),
                                              padding: EdgeInsets.only(
                                                  top: 5.0,
                                                  left: 50.0
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {}
                ),
              ],
            );
          }
      );
    }
  }
}
