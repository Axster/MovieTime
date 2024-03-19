import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  final String imageUrl;
  final double? size;
  final double? height;
  final double? width;

  const MovieImage({
    Key? key,
    required this.imageUrl,
    this.size,
    this.height,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: size ?? width ?? screenWidth,
      height: size ?? height ?? screenWidth * 0.6,//moltiplico per .06 per mantenere le proporzioni dell'altezza
      decoration: ShapeDecoration(
        shape: const BeveledRectangleBorder(),
        image: DecorationImage(image: NetworkImage(imageUrl)),
      ),
    );
  }
}
