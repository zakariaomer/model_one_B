import 'package:flutter/material.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/constans/sizes.dart';
import 'package:model_one/utils/helpers/helper_function.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size=TSizes.xl,
      required this.icon,
      this.backgraundColor,
      this.color,
      this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? backgraundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:  backgraundColor !=null ?backgraundColor! :THelperFunctions.isDarkMode(context)?TColors.black.withOpacity(0.9) :TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(80)
      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon ,color: color,size: size,),),
    );
  }
}
