import 'package:ecommerce_app/constance.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({ required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}
