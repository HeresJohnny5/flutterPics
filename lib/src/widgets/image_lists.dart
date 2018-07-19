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
          return Text(images[index].url);
        }
      );
    }
}