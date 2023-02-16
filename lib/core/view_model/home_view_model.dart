import 'package:ecommerce_app/view/home/cart_screen.dart';
import 'package:ecommerce_app/view/home/home_screen.dart';
import 'package:ecommerce_app/view/home/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{
   int _bottomNavIndex = 0;
   get bottomNavIndex => _bottomNavIndex;
   Widget _selectedScreen = HomeScreen();
   get selectedScreen => _selectedScreen;

   void changeBottomNavState(int selectedIndex ){
      _bottomNavIndex = selectedIndex;
      switch(selectedIndex){
         case 0:
            _selectedScreen = HomeScreen();
            break;
         case 1:
            _selectedScreen = const CartScreen();
            break;
         case 2:
            _selectedScreen = const ProfileScreen();
            break;
      }
      update();
   }
}