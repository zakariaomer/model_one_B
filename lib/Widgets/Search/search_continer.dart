
import 'package:flutter/material.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';
import '../../utils/decice/device_utility.dart';
import '../../utils/helpers/helper_function.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, 
    required this.text, 
    this.icon, 
    this.showBackground=true, 
    this.showBorder=true,
  });
  final String text;
  final  IconData? icon;
  final bool showBackground,showBorder;

  @override
  Widget build(BuildContext context) {
    
    final dark =THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.SpaceBtwItems),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.borderRadiusMd),
        decoration: BoxDecoration(
            color:showBackground ? dark ?TColors.dark:TColors.light :Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg), //تجربه
            border:showBorder? Border.all(color: TColors.grey):null,
            ),
        child: Row(
          children: [
             Icon(
              // Icons.search,
              icon,
              color: TColors.darkGrey,
            ),
            const SizedBox(
              width: TSizes.SpaceBtwItems,
            ),
            Text(
              // 'Search in store',
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}