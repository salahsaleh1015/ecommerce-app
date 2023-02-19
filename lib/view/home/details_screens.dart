import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/view/widgets/custom_buton.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   ProductModel model;

  DetailsScreen({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.network(model.image!, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: SingleChildScrollView(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    color: Colors.black,
                    title: "Nike Dri-FIT Long Sleeve",
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomText(title: "Size", fontSize: 17, color: Colors.black, fontWeight: FontWeight.normal),
                            CustomText(title: "Xl", fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      Container(

                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const CustomText(title: "Color", fontSize: 17, color: Colors.black, fontWeight: FontWeight.normal),
                            Container(
                              width: 20,
                              height: 20,
                              decoration:BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)
                              )  ,
                            ),

                          ],
                        ),

                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(title: "Details", fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomText(title: "${model.description}", fontSize: 17, color: Colors.black, fontWeight: FontWeight.normal),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const CustomText(title: "Price", fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                            CustomText(title: "${model.price}\$", fontSize: 20, color: AppConstance.kPrimaryColor, fontWeight: FontWeight.bold),
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppConstance.kPrimaryColor,
                          ),
                          child: Center(child: const CustomText(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 20,title: "ADD")),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
