import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imageSource;
  final int index;
  final double extent;

  const ImageTile(
      {super.key,
      required this.imageSource,
      required this.index,
      required this.extent});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8)
        ),
        clipBehavior: Clip.antiAlias,
        height: extent,
        child: Image.network(
          imageSource,
          fit: BoxFit.cover,
        ));
  }
}
