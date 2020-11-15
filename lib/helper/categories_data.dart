import 'package:delivery_app/model/categories_model.dart';
import 'package:flutter/material.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> myCategories = List<CategoryModel>();
  CategoryModel categoryModel;

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Tacos";
  categoryModel.imageUrl = "assets/icons/Tacos.svg";
  categoryModel.color = Color(0xFFD0E6A5);
  myCategories.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Fries";
  categoryModel.imageUrl = "assets/icons/Fries.svg";
  categoryModel.color = Color(0xFF86E3CE);
  myCategories.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Burger";
  categoryModel.imageUrl = "assets/icons/Burger.svg";
  categoryModel.color = Color(0xFFFFDD95);
  myCategories.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Pizza";
  categoryModel.imageUrl = "assets/icons/pizza.svg";
  categoryModel.color = Color(0xFFFFACAC);
  myCategories.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Burritos";
  categoryModel.imageUrl = "assets/icons/Burritos.svg";
  categoryModel.color = Color(0xFFCCAAD9);
  myCategories.add(categoryModel);

  return myCategories;
}
