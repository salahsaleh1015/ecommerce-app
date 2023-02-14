import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<String> names = [
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
  ];
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     _auth.signOut();
      //   },
      //
      // ),
      body: Container(
        padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchFormField(),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                  fontWeight: FontWeight.bold,
                  title: "Categories",
                  fontSize: 20,
                  color: Colors.black),
              const SizedBox(
                height: 10,
              ),
              _categoryList(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                      title: "Best Selling",
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  CustomText(
                      title: "See all",
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _productList(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _searchFormField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _categoryList() {
    return Container(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  child: Image.asset('images/Icon_Mens Shoe.png'),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                CustomText(
                    title: names[i],
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal)
              ],
            );
          },
          separatorBuilder: (context, i) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: names.length),
    );
  }
  Widget _productList(){
    return SizedBox(
      height: 350,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , i){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/Image.png'),
                const CustomText(title: "BeoPlay Speaker", fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
                SizedBox(
                  height: 3,
                ),
                const CustomText(title: "Bang and Olufsen", fontSize: 12, color: Colors.grey, fontWeight: FontWeight.normal),
                SizedBox(
                  height: 3,
                ),
                const CustomText(title: "\$755", fontSize: 14, color: AppConstance.kPrimaryColor, fontWeight: FontWeight.bold),
              ],
            );
          }, separatorBuilder: (context , i){
        return const SizedBox(width: 10,);
      }, itemCount: names.length),
    );
  }
}
