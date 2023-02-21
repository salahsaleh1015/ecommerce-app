import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  List<String> names = <String>[
    "salah",
    "salah",
    "salah",
    "salah",
    "salah",
  ];
  List<String> images = <String>[
    "images/Image.png",
    "images/Image.png",
    "images/Image.png",
    "images/Image.png",
    "images/Image.png",
  ];
  List<int> prices = <int>[
    20,
    30,
    40,
    50,
    60,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        height: 150,
                        child: Row(
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              child:
                                  Image.asset(images[index], fit: BoxFit.fill),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                    title: names[index],
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                    title: "${prices[index].toString()}\$",
                                    fontSize: 15,
                                    color: AppConstance.kPrimaryColor,
                                    fontWeight: FontWeight.normal),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  color: Colors.grey.shade200,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const CustomText(
                                          color: Colors.black,
                                          fontSize: 25,
                                          title: "+",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const CustomText(
                                        color: Colors.black,
                                        fontSize: 25,
                                        title: "1",
                                        fontWeight: FontWeight.bold,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const CustomText(
                                          color: Colors.black,
                                          fontSize: 25,
                                          title: "-",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: names.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
