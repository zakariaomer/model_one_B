import 'package:flutter/material.dart';
import 'package:model_one/Widgets/Proudect/Card/product_title_text.dart';
import 'package:model_one/Widgets/icons/t_circular_icon.dart';
import 'package:model_one/Widgets/Proudect/rouded_container.dart';
import 'package:model_one/Widgets/images/t_rounded_image.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/constans/image_string.dart';
import 'package:model_one/utils/helpers/helper_function.dart';
import '../../../features/secreens/Home.dart';
import '../../../utils/constans/sizes.dart';
import '../../texts/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TSadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productIamgeSizeRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 200,
              padding: const EdgeInsets.all(TSizes.xs),
              backgraundColor: dark ? TColors.dark : TColors.light,
              showBorder: true,
              child: Stack(
                children: [
                  ///---------------------Image-------------------------///
                  TRoundedImage(
                    imageUrl: TImage.TImge_HandWatch,
                    applyImageRadius: true,
                  ),

                  ///------------------- '25%'-----------------------------------///
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                        radius: TSizes.xs,
                        backgraundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        )),
                  ),

                  /// -------------------Icons Favorite Icon Buttom--------------------///
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Icons.favorite,
                        color: Colors.red,
                      )),
                ],
              ),
            ),

            const SizedBox(height: TSizes.SpaceBtwItems / 2),

            /// --------------------------- Details Product--------------------------------///
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                      title: 'Blauck Nike Air T-Shirt', smallSize: true),
                  SizedBox(height: TSizes.SpaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: TSizes.xs),
                      Icon(
                        Icons.verified,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),

            /// ------------------Price-----------------------///
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TProductPriceText( price: '35.0',isLarge: true,),

                /// Add to Cart Button
                Container(
                    decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:Radius.circular(TSizes.productIamgeSizeRadius))),

                    ///-------------------Icons.add------------------------///
                    child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: TColors.white,
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TcontainerIcon extends StatelessWidget {
  const TcontainerIcon({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: dark
              ? TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.favorite),
        iconSize: TSizes.iconMd,
      ),
    );
  }
}
