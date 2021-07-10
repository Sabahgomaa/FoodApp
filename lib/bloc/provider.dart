import 'package:food_cart_app/model/fooditem.dart';

class CardProvider {
  List<FoodItem> foodItems =[];
  List<FoodItem> addToList (FoodItem fooditem){
    foodItems.add(fooditem);
    return foodItems;
  }
  List<FoodItem> removeFromList(FoodItem foodItem){
    foodItems.remove(foodItem);
    return foodItems;
  }
}