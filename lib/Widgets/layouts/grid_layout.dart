import 'package:flutter/material.dart';

import '../../utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';
import '../Proudect/Card/product_card_vertical.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=300,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpaceing,
          crossAxisSpacing: TSizes.gridViewSpaceing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder:itemBuilder);
  }
}

