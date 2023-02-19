import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/home_sevices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../model/category_model.dart';
import '../../model/product_model.dart';

class HomeViewModel extends GetxController {
  ValueNotifier<bool> get loading=> _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  List<ProductModel> get productModel => _productModel;
  final List<CategoryModel> _categoryModel = [];
 final List<ProductModel> _productModel = [];
  HomeViewModel(){
    getCategory();
    getBestSellingProducts();
  }

  getCategory() async {
    _loading.value= true;
    HomeServices().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(CategoryModel.fromJson(
            value[i].data() as Map<String, dynamic>));
        print(_categoryModel.length);
        _loading.value=false;
      }
      update();
    });
  }
  getBestSellingProducts()async{
    _loading.value= true;
    HomeServices().getProduct().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(ProductModel.fromJson(
            value[i].data() as Map<String, dynamic>));
        print(_productModel.length);
        _loading.value=false;
      }
      update();
    });

  }
}
