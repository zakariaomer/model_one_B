import 'package:flutter/material.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/constans/image_string.dart';
import '../../Widgets/Appbar/THome_Appbarr.dart';
import '../../Widgets/TClipPath.dart';
import '../../Widgets/catogrie_section.dart';
import '../../Widgets/Search/search_continer.dart';
import '../../utils/constans/sizes.dart';
import '../../utils/decice/device_utility.dart';
import '../../utils/helpers/helper_function.dart';

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
                hieght: 350,
                child: Column(
                  children: [
                    /// -- AppBar --
                    const THome_Appbar(),
                    const SizedBox(height: TSizes.SpacDefault),

                    /// -- SearchBar --
                    const TSearchContainer(
                      text: 'Search in Store',
                    ),
                    const SizedBox(height: TSizes.SpacDefault),

                    /// -- Headeing Categories --
                    Padding(
                      padding: const EdgeInsets.only(left: TSizes.SpaceBtwItems),
                      child: Column(
                        children: [
                          TCategorieSectionHeadeing(
                            title: 'Popular Categories',
                            textColor: TColors.white,
                            // showActionButton: true,
                          ),
                          const SizedBox(height: TSizes.SpaceBtwItems),

                          /// -- Categories --
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 8,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return TCategory_Vrtical_IamgeText(
                                    image: TImage.TImages1,
                                    title: 'Shose',
                                    onTap: () {},
                                  );
                                }),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //  child:Column(),
              Container(
                  color: TColors.primary.withOpacity(0.2),
                  height: 200,
                  width: 200,
                  child: Card(
                      color: TColors.accent,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Text(
                                            'صورة المنتج',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            // Theme.of(context).textTheme.bodyLarge
                                          ),
                                        )))),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('اسم المنتج'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'السعر:  \$99.9',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.green),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.shopping_cart)),
                              ],
                            ),
                          ]))),
            ],
          ),
        ),
      ),
    );
  }
}

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
            // Cirical Icon
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
