import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:ecommerce_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../core/view_model/home_view_model.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginScreen()
          : GetBuilder<HomeViewModel>(
            builder:(controller)=> Scaffold(
              body: controller.selectedScreen,
                bottomNavigationBar: _buildBottomNavBar(),
              ),
          );
    });
  }

  Widget _buildBottomNavBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => BottomNavigationBar(
          currentIndex: controller.bottomNavIndex,
          onTap: (index) {
            controller.changeBottomNavState(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: '',
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("explore",
                    style: TextStyle(color: AppConstance.kPrimaryColor)),
              ),
              icon: Icon(FontAwesomeIcons.basketShopping),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("cart",
                    style: TextStyle(color: AppConstance.kPrimaryColor)),
              ),
              icon: Icon(FontAwesomeIcons.cartShopping),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("profile",
                    style: TextStyle(color: AppConstance.kPrimaryColor)),
              ),
              icon: Icon(FontAwesomeIcons.user),
            )
          ]),
    );
  }
}
