import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/Widgets/Proudect/Card/product_card_vertical.dart';
import 'package:model_one/Widgets/icons/t_circular_icon.dart';
import 'package:model_one/Widgets/layouts/grid_layout.dart';
import 'package:model_one/features/secreens/Home.dart';
import 'package:model_one/utils/constans/sizes.dart';

import '../../../Widgets/Appbar/appbar.dart';
import '../../../utils/constans/colors.dart';

class FavouriteSecreen extends StatelessWidget {
  const FavouriteSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(

        appBar: TAppBar(
          title: Text(
            'Wishlist ',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCircularIcon(
              icon: Icons.add,
              onPressed: () => Get.to(const HomeSecreen()),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.SpacDefault),
            child: Column(
              children: [
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
