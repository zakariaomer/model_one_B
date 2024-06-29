
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_one/Widgets/Appbar/appbar.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/text_string.dart';
import '../../utils/decice/device_utility.dart';

class THome_Appbar extends StatelessWidget {
  const THome_Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      
      // backgroundColor: TColors.primary,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //         bottomLeft: Radius.circular(15),
      //         bottomRight: Radius.circular(15))),
      title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.homeAppbarTitle,
                style: Theme.of(context)
                    .textTheme.labelLarge!
                    .apply(color: TColors.grey)), //grey
            Text(
              TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.textwhite),
            )
          ]),
      leading:
          IconButton(
            onPressed: () {},
             icon: const Icon(Icons.menu)
             ),
      actions: [
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: TColors.textwhite,
                )),
            Positioned(
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: TColors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(
                              color: TColors.textwhite,
                              fontSizeFactor: 0.8),
                    ),
                  ),
                ))
          ],
        )
                
      ],
      
      // bottom: PreferredSize(child: SizedBox(), preferredSize: Size.fromHeight(200)),
    );
  }

    // @override
  // TODO: implement preferredSize
  // Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}