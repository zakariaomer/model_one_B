import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constans/colors.dart';
import '../../utils/constans/sizes.dart';
import '../../utils/decice/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showbackArrow = false,
    this.leadingIcon,
    this.actions,
    this.lradingOnpressed,
     this.leading,
  });

  final Widget? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? lradingOnpressed;
  final IconButton? leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        
        surfaceTintColor:TColors.primary ,
        foregroundColor: TColors.primary,
        shadowColor: TColors.primary,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
        //  backgroundColor: TColors.textwhite.withOpacity(0.1),
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
