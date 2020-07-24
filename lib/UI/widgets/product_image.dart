import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 125.0,
      width: 135.0,
      fit: BoxFit.fitHeight,
    );
  }
}
