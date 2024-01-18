import 'package:appdrivepattern/common/widget/image/common_image.dart';
import 'package:flutter/material.dart';

class ImageWithSized extends StatelessWidget {
  const ImageWithSized(
      {super.key,
      this.fit = BoxFit.contain,
      required this.image,
      required this.isNetworkImage,
      this.overlayColor,
      this.bgColor,
      required this.width,
      required this.height,
      required this.padding});

  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? bgColor;
  final double width, height, padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      child: Center(
        child: ImageOnly(
            fit: fit,
            imageUrl: image
        )
        ),
    );
  }
}
