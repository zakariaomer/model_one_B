import 'package:flutter/material.dart';
import 'package:model_one/Widgets/Search/TSearch.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/constans/image_string.dart';
import '../../Widgets/Appbar/THome_Appbarr.dart';
import '../../Widgets/Categories/THomeCategories.dart';
import '../../Widgets/Categories/catogrie_section.dart';
import '../../Widgets/Clips/TClipPath.dart';
import '../../Widgets/Clips/clip.dart';
import '../../Widgets/images/t_rounded_image.dart';
import '../../Widgets/promoslider/promo_slider.dart';
import '../../utils/constans/sizes.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Padding(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // -- Header --
              TClipPath(
      clipper: TCusteomCurvedEdges(),

                hieght: 350,
                child: Column(
                  children: [
                    /// -- AppBar --
                    const THome_Appbar(),
                    const SizedBox(height: TSizes.SpacDefault),

                    /// -- SearchBar --
                    const TSearch(),
                    const SizedBox(height: TSizes.SpacDefault),

                    /// -- Headeing Categories --
                    Padding(
                      padding:
                          const EdgeInsets.only(left: TSizes.SpaceBtwItems),
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
              Padding(
                  padding: const EdgeInsets.all(TSizes.SpacDefault),
                  child: TpromoSlider(
                    
                    banners: const [
                      TImage.TImge_product_01,
                      TImage.TImge_product_05,
                      TImage.TImge_products_heading,
                      TImage.TImgeproduct_03,
                      ],
                  )),



              // Container(///11111111111111111
              //     color: TColors.primary.withOpacity(0.2),
              //     height: 200,
              //     width: 200,
              //     child: Card(
              //         color: TColors.accent,
              //         child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Expanded(
              //                   child: Padding(
              //                       padding: const EdgeInsets.all(3.0),
              //                       child: Container(
              //                           color: Colors.grey[300],
              //                           child: Center(
              //                             child:
              //                                 //  Text(
              //                                 //   'صورة المنتج',
              //                                 //   textAlign: TextAlign.center,
              //                                 //   style: TextStyle(
              //                                 //     fontSize: 20,
              //                                 //     fontWeight: FontWeight.bold,
              //                                 //   ),
              //                                 //   // Theme.of(context).textTheme.bodyLarge
              //                                 // ),
              //                                 // Image(image:AssetImage(TImage.TImge_HandWatch),)
              //                                 TRoundedImage(
              //                               imageUrl: TImage.TImge_HandWatch,
              //                             ),
              //                           )))),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Text('اسم المنتج'),
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         horizontal: 8.0),
              //                     child: Text(
              //                       'السعر:  \$99.9',
              //                       style: TextStyle(
              //                           fontSize: 15, color: Colors.green),
              //                     ),
              //                   ),
              //                   Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: Icon(Icons.shopping_cart)),
              //                 ],
              //               ),
              //             ]))),
           
           
            ],
          ),
        ),
      ),
    );
  }
}
