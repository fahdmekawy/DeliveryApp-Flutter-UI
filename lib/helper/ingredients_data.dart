import 'package:delivery_app/model/ingredients_model.dart';

List<IngredientsModel> getIngredients() {
  List<IngredientsModel> myIngredients = List<IngredientsModel>();
  IngredientsModel ingredientsModel;

  //1
  ingredientsModel = new IngredientsModel();
  ingredientsModel.image = "assets/images/grilled.jpg";
  ingredientsModel.title = "Skirt steak";
  myIngredients.add(ingredientsModel);

  //2
  ingredientsModel = new IngredientsModel();
  ingredientsModel.image = "assets/images/bread.jpg";
  ingredientsModel.title = "Sesame bread";
  myIngredients.add(ingredientsModel);

  //3
  ingredientsModel = new IngredientsModel();
  ingredientsModel.image = "assets/images/Lettuce.jpg";
  ingredientsModel.title = "Lettuce";
  myIngredients.add(ingredientsModel);

  //4
  ingredientsModel = new IngredientsModel();
  ingredientsModel.image = "assets/images/onion.jpg";
  ingredientsModel.title = "Onion";
  myIngredients.add(ingredientsModel);

  return myIngredients;
}
