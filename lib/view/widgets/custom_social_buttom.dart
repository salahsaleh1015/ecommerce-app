import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
 final String text;
 final String image;
 final GestureTapCallback onTap;

  const CustomSocialButton({ required this.text, required this.image ,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                image,
              ),
               Center(
                child: CustomText(
                    fontWeight: FontWeight.normal,
                    title: text,
                    fontSize: 16,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
