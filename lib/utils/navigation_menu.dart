import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/features/secreens/profile.dart';
import 'package:model_one/utils/constans/colors.dart';
import 'package:model_one/utils/helpers/helper_function.dart';
import '../features/secreens/Home.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              backgroundColor: darkMode ?TColors.black :Colors.white,
              // indicatorColor:darkMode ? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),                          
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
                NavigationDestination( icon: Icon(Icons.heart_broken), label: 'Wishlist'),
                NavigationDestination( icon: Icon(Icons.supervised_user_circle), label: 'Profile'),
              ])),
      body: Obx(() => controller.secreens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final secreens = [
    const HomeSecreen(),
    const profile11(),
    Container(color: Colors.purple),
    // Container(color: Colors.orange),
    Container(color: Colors.lightBlue),
  ];
}
