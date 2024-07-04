import 'package:flutter/material.dart';

import '../../Widgets/Appbar/THome_Appbarr.dart';
import '../../Widgets/Categories/THomeCategories.dart';
import '../../Widgets/Categories/catogrie_section.dart';
import '../../Widgets/Clips/TClipPath.dart';
import '../../Widgets/Clips/clip.dart';
import '../../Widgets/Proudect/Card/product_card_vertical.dart';
import '../../Widgets/Search/TSearch.dart';
import '../../Widgets/promoslider/promo_slider.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/image_string.dart';
import '../../utils/constans/sizes.dart';

class profile11 extends StatelessWidget {
  const profile11({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // -- Header --
              TClipPath(
                color: const Color.fromARGB(255, 95, 141, 152).withOpacity(0.8),
              hieght:990,
                clipper: TCusteomCurvedEdges(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //               /// -- AppBar --
                    THome_Appbar(),
              
                    const SizedBox(height: TSizes.SpaceBtwItems),
              
                    //               /// -- SearchBar --
                    const TSearch(),
                    // const SizedBox(height: TSizes.SpaceBtwItems),
                    Padding(
                        padding: const EdgeInsets.all(TSizes.xl),
                        child: TpromoSlider(
                          banners: const [
                            TImage.TImge_product_01,
                            TImage.TImge_product_05,
                            TImage.TImge_products_heading,
                            TImage.TImgeproduct_03,
                            TImage.TImgeproduct_03,
                          ],
                        )),
              
                    Padding(
                      padding: const EdgeInsets.only(left: TSizes.SpacDefault),
                      child: Column(
                        children: const [
                          /// -- Headeing --
                          TCategorieSectionHeadeing(
                              title: 'Popular Categories2',
                              fontTitle: TSizes.lg,
                              textColor: TColors.white,
                              showActionButton: true),
                          SizedBox(height: TSizes.SpaceBtwItems),
              
                          /// -- Categories --
                          THomeCategories(),
                          SizedBox(height: TSizes.SpaceBtwItems),
                        ],
                      ),
                    ),

                    Container(
                      height: 300,
                      child: const TProductCardVertical()),
              
                    // SizedBox(height: TSizes.SpaceBetweenSections),
              
              
                  ],
                ),
              ),

              /// ---------Bady-------

              //  child:Column(),
            ],
          ),
        ),
      ),
    );
  }
}
