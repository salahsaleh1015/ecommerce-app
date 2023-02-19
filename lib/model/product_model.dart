import 'package:flutter/material.dart';

import '../core/utils/exetintion.dart';

class ProductModel {
   String? name, image, description, sized,price;
  // Color? color;
  ProductModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.sized,
    //  required this.color,
      required this.price});

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    // if(map == null){
    //   return ;
    // }

    name = map["name"];
    image = map["image"];
    description = map["description"];
    sized = map["sized"];
   //color =HexColor.fromHex(map["color"]);
    price = map["price"];
  }
  toJson() {
    return {
      "name": name,
      "image": image,
      "description": description,
      "sized": sized,
     // "color": color,
      "price": price,
    };
  }
}
