import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/view/widgets/custom_buton.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppConstance.kBackGroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppConstance.kBackGroundColor,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const CustomText(
                title: "Sign Up",
                color: Colors.black,
                fontSize: 35,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                  title: "name", fontSize: 16, color: Colors.grey),
              CustomFormField(
                title: "David Spade",
                onSaved: (v) {},
                validator: (v) {},
              ),
              const SizedBox(
                height: 30,
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
                height: 40,
              ),
               CustomButton(
                onTap: (){},
                title: "SIGN UP ",
              ),

            ],
          ),
        ),
      ),

    );
  }
}
