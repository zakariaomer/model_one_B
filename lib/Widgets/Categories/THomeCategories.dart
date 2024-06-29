import 'package:flutter/material.dart';
import 'package:model_one/Widgets/Categories/Tcategory__IamgeText.dart';
import '../../utils/constans/image_string.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TCategory_Vrtical_IamgeText(
              image: TImage.TImge_HandWatch,
              title: 'Shose',
              onTap: () {},
            );
          }),
    );
  }
}
