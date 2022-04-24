import 'package:project2/model/shop_model.dart';

class Constants {
  factory Constants() => _instance;

  Constants._internal();

  static final Constants _instance = Constants._internal();
  static Map<String, ShopModel> foods = {};
  static Map<String, ShopModel> drinks = {};
  static Map<String, ShopModel> staionerys = {};
  static Map<String, ShopModel> alls = {};
  static Map<ShopModel, int> shops = {};

  static void init() {
    foods["Chocolate"] =
        ShopModel("food_1", 20, "Chocolate", "assets/2.1.jpg", "Food");
    foods["Pocky"] = ShopModel("food_2", 30, "Pocky", "assets/2.2.jpg", "Food");
    foods["Chips"] = ShopModel("food_3", 15, "Chips", "assets/2.3.jpg", "Food");
    foods["Bread"] = ShopModel("food_4", 10, "Bread", "assets/2.4.jpg", "Food");
    drinks["Milk tes"] =
        ShopModel("dringk_1", 40, "Milk tes", "assets/3.1.jpg", "Drink");
    drinks["Coke"] =
        ShopModel("dringk_2", 15, "Coke", "assets/3.2.jpg", "Drink");
    drinks["Juice"] =
        ShopModel("dringk_3", 25, "Juice", "assets/3.3.jpg", "Drink");
    drinks["Water"] =
        ShopModel("dringk_4", 10, "Water", "assets/3.4.jpg", "Drink");
    staionerys["Eraser"] =
        ShopModel("staionery_1", 5, "Eraser", "assets/4.1.jpg", "Staionery");
    staionerys["Pen"] =
        ShopModel("staionery_2", 20, "Pen", "assets/4.2.jpg", "Staionery");
    staionerys["Tape"] =
        ShopModel("staionery_3", 10, "Tape", "assets/4.3.jpg", "Staionery");
    staionerys["Ruler"] =
        ShopModel("staionery_4", 10, "Ruler", "assets/4.4.jpg", "Staionery");
    alls.addAll(foods);
    alls.addAll(drinks);
    alls.addAll(staionerys);
  }
}
