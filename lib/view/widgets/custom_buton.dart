import 'package:ecommerce_app/constance.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;

  const CustomButton({ required this.title , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppConstance.kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: Text(title,style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.normal
          )),
        ),
      ),
    );
  }
}
