import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/features/Controlers/home_controler.dart';
import 'package:model_one/utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';
import '../Clips/Continer.dart';
import '../images/t_rounded_image.dart';

class TpromoSlider extends StatelessWidget {
  TpromoSlider( {
    super.key, required this.banners,
  });
  final List<String> banners;
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction:1,
            //get
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((Url) => TRoundedImage(imageUrl: Url)).toList(),
          
        ),
        const SizedBox(height: TSizes.SpaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TcircularContainer(
                    heigt: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backgraondcolor: controller.carousalCurrentIndex.value == i ? TColors.primary: Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
