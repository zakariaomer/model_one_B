import 'package:flutter/material.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/constans/sizes.dart';

class TCategorieSectionHeadeing extends StatelessWidget {
  const TCategorieSectionHeadeing({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.butonTitle = 'View all',
    this.onPressed,
     this.fontTitle=TSizes.lg,
  });

  final Color? textColor;
  final double? fontTitle;
  final bool showActionButton;
  final String title, butonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
          TextStyle(
            color: textColor,
            fontSize: fontTitle,
            

          ),
          //  Theme.of(context)
          //     .textTheme.headlineMedium!
          //     .apply(color: textColor ,),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              butonTitle,
              style: TextStyle(
                  fontSize: TSizes.fontSizeSm,
                  color: TColors.textwhite.withOpacity(0.6)),
            ),
          )
      ],
    );
  }
}
