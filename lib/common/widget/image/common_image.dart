import 'package:flutter/material.dart';


class ImageOnly extends StatelessWidget {
  const ImageOnly({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.fit = BoxFit.contain,
    this.isNetWorkImage = false,

  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxFit fit;
  final bool isNetWorkImage;

  @override
  Widget build(BuildContext context) {
    return Image(

        width: width,
        height: height,
        image: isNetWorkImage
            ? NetworkImage(imageUrl)
            : AssetImage(imageUrl) as ImageProvider,
        fit: fit);
  }
}
