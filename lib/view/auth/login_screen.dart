import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/view/auth/register_screen.dart';
import 'package:ecommerce_app/view/widgets/custom_buton.dart';
import 'package:ecommerce_app/view/widgets/custom_social_buttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/view_model/auth_view_model.dart';
import '../widgets/custom_form_field.dart';
import '../widgets/custom_text.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstance.kBackGroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppConstance.kBackGroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    title: "Welcome,",
                    color: Colors.black,
                    fontSize: 35,
                  ),
                  CustomText(
                      title: "Sign",
                      fontSize: 17,
                      color: AppConstance.kPrimaryColor)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomText(
                  title: "Sign in to Continue",
                  fontSize: 16,
                  color: Colors.grey),
              const SizedBox(
                height: 50,
              ),
              const CustomText(
                  title: "Email", fontSize: 16, color: Colors.grey),
              CustomFormField(
                title: "iamdavid@gmail.com",
                onSaved: (v) {},
                validator: (v) {},
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                  title: "password", fontSize: 16, color: Colors.grey),
              CustomFormField(
                title: "*********",
                onSaved: (v) {},
                validator: (v) {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children:  [
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      Get.to(const RegisterScreen());
                    },
                    child: const CustomText(
                        title: "forget password? ",
                        fontSize: 17,
                        color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomButton(
                title: "SIGN IN ",
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: CustomText(
                      title: "-OR-", fontSize: 20, color: Colors.black)),
              const SizedBox(
                height: 10,
              ),
               CustomSocialButton(
                onTap: (){
                  controller.sinInWithFacebookMethod();
                },
                text: "Sign In with Facebook",
                image: "images/Icon_Facebook.png",
              ),
              const SizedBox(
                height: 10,
              ),
               CustomSocialButton(
                onTap: (){
                  controller.sinInWithGoogleMethod();
                },
                text: "Sign In with google",
                image: "images/icons8_Google_2.png",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
