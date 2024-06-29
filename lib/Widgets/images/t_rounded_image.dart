import 'package:flutter/material.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';

class TRoundedImage extends StatelessWidget {
   TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetorkImage = false,
    this.onPressed,
    this.boredrRadius = TSizes.md,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetorkImage;
  final VoidCallback? onPressed;
  final double boredrRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(boredrRadius),
        ),
        child: ClipRRect(
            borderRadius:applyImageRadius? BorderRadius.circular(boredrRadius):BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetorkImage ?NetworkImage(imageUrl):AssetImage(imageUrl) as ImageProvider )
            ),
      ),
    );
  }
}