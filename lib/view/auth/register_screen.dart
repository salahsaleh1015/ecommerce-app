import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:ecommerce_app/view/widgets/custom_buton.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_form_field.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
   RegisterScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppConstance.kBackGroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppConstance.kBackGroundColor,
        leading: IconButton(onPressed: (){
          Get.off(LoginScreen());
        }, icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CustomText(
                  fontWeight: FontWeight.bold,
                  title: "Sign Up",
                  color: Colors.black,
                  fontSize: 35,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                    fontWeight: FontWeight.normal,
                    title: "name", fontSize: 16, color: Colors.grey),
                CustomFormField(
                  title: "David Spade",
                  onSaved: (value) {
                    controller.name = value;
                  },
                  validator: (value) {
                    if(value == null){
                      print("null");
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                    fontWeight: FontWeight.normal,
                    title: "Email", fontSize: 16, color: Colors.grey),
                CustomFormField(

                  title: "iamdavid@gmail.com",
                  onSaved: (value) {
                    controller.email = value;
                  },
                  validator: (value) {
                    if(value == null){
                      print("null");
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                    fontWeight: FontWeight.normal,
                    title: "password", fontSize: 16, color: Colors.grey),
                CustomFormField(
                  title: "*********",
                  onSaved: (value) {
                    controller.password = value;
                  },
                  validator: (value) {
                    if(value == null){
                      print("null");
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                 CustomButton(
                   onTap: (){
                     _formKey.currentState!.save();
                     if(_formKey.currentState!.validate()){
                       controller.registerWithEmailAndPassword();
                     }
                   },
                  title: "SIGN UP ",
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
