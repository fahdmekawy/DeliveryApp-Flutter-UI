import 'package:delivery_app/model/categories_model.dart';
import 'package:delivery_app/model/popular_products_model.dart';
import 'package:flutter/material.dart';

List<PopularProductModel> getProducts() {
  List<PopularProductModel> myProducts = List<PopularProductModel>();
  PopularProductModel productModel;

  //1
  productModel = new PopularProductModel();
  productModel.title = "Classic Pizza";
  productModel.description = "Classic house sauce";
  productModel.fav = "assets/icons/heart.svg";
  productModel.img = "assets/icons/pizza.svg";
  myProducts.add(productModel);

  //2
  productModel = new PopularProductModel();
  productModel.title = "Burger mix";
  productModel.description = "Double meat with cheese";
  productModel.fav = "assets/icons/heart2.svg";
  productModel.img = "assets/icons/Burger.svg";
  myProducts.add(productModel);

  //3
  productModel = new PopularProductModel();
  productModel.title = "Classic Pizza";
  productModel.description = "Classic house sauce";
  productModel.fav = "assets/icons/heart.svg";
  productModel.img = "assets/icons/pizza.svg";
  myProducts.add(productModel);
  return myProducts;
}
