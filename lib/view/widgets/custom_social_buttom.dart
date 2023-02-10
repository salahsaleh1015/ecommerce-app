import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
 final String text;
 final String image;

  const CustomSocialButton({ required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                  title: text,
                  fontSize: 16,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
