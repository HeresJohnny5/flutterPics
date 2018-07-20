import 'package:flutter/material.dart';
import '../models/image_model.dart';

// it's not the ImageList's job to maintain the list of images, nor will it re-render itself which is why the ImageList extends StatelessWidget rather than StatefulWidget
// StatelessWidgets should contain data that will not change over time
class ImageList extends StatelessWidget {
  // class ImageList inherits from a class marked as @immutable, and therefore should be immutable (all instance fields must be final)
  final List<ImageModel> images;

  ImageList(this.images);

  @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: images.length, // how many widgets you want the ListView to create
        itemBuilder: (context, int index) {
          return buildImage(images[index]);
        }
      );
    }

    Widget buildImage(ImageModel image) {
      return Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.grey),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image.network(image.url),
            ),
            Text(image.title),
          ],
        ),
      );
    }
}