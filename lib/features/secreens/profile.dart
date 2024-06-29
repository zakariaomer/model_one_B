import 'package:flutter/material.dart';

import '../../Widgets/Appbar/THome_Appbarr.dart';
import '../../Widgets/Categories/THomeCategories.dart';
import '../../Widgets/Categories/catogrie_section.dart';
import '../../Widgets/Clips/TClipPath.dart';
import '../../Widgets/Clips/clip.dart';
import '../../Widgets/Search/TSearch.dart';
import '../../Widgets/images/t_rounded_image.dart';
import '../../Widgets/promoslider/promo_slider.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/image_string.dart';
import '../../utils/constans/sizes.dart';

class profile11 extends StatelessWidget {
  const profile11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // -- Header --
              TClipPath(
                
                hieght: 800,
      clipper: TCusteomCurvedEdges(
        

      ),

                child: Column(
                  children: [
      //               /// -- AppBar --
                     THome_Appbar(
                      
                     
                     ),
                    
                    const SizedBox(height: TSizes.SpacDefault),

      //               /// -- SearchBar --
                    const TSearch(),
                    const SizedBox(height: TSizes.SpaceBetweenSections),                  
                        Padding(
                  padding: const EdgeInsets.all(TSizes.xl),
                  child: TpromoSlider(                
                    banners: const [
                      TImage.TImge_product_01,
                      TImage.TImge_product_05,
                      TImage.TImge_products_heading,
                      TImage.TImgeproduct_03,
                      ],
                  )),
                         Padding(
                      padding:
                          const EdgeInsets.only(left: TSizes.SpacDefault),
                      child: Column(
                        children: const [
                          /// -- Headeing --
                          TCategorieSectionHeadeing(
                              title: 'Popular Categories',
                              textColor: TColors.white,
                              showActionButton: true),
                          SizedBox(height: TSizes.SpaceBtwItems),

                          /// -- Categories --
                          THomeCategories(),
                          
                        ],
                      ),
                    ),



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
