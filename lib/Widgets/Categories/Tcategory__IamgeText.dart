import 'package:flutter/material.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';
import '../../utils/helpers/helper_function.dart';

class TCategory_Vrtical_IamgeText extends StatelessWidget {
  const TCategory_Vrtical_IamgeText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgruondColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgruondColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.SpaceBtwItems),
        child: Column(
          children: [
            //-- Cirical Icon--
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.xs),
              decoration: BoxDecoration(
                color:
                    backgruondColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image:
                      // AssetImage(TImage.TImages1),
                      AssetImage(image),
                  fit: BoxFit.cover,
                  //   color: dark ? TColors.light :TColors.dark
                ),
              ),
            ),
            // --text
            const SizedBox(height: TSizes.SpaceBtwItems / 3),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}