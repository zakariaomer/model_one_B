import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/Widgets/sizes.dart';

import '../../Coloers/colors.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showbackArrow = false,
      this.leadingIcon,
      this.actions,
      this.lradingOnpressed,});

  final Widget? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? lradingOnpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        
       // backgroundColor: TColors.textwhite.withOpacity(0.1),
        backgroundColor: TColors.primary,
        automaticallyImplyLeading: false,
        leading: showbackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: lradingOnpressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
