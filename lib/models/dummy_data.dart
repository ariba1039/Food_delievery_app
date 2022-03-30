// we will need this dummy data to generate some fake data
import 'package:food_delievery_app/models/food_card_model.dart';

class FakeData {
  static List<String> categories = [
    "Pizza",
    "Burger",
    "Saladas ",
    "Pasta ",
    "Soup ",
  ];
  static List<FoodCardModel> food_menu = [
    FoodCardModel(
        "Hawalian Chicken Pizza ",
        "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
        "Pizza house ",
        4.5,
        "10min - 20 min ",
        15,
        "a good and crispy pizza with chicken m double cheese chedar "),
    FoodCardModel(
        "Pizza chicken ",
        "https://images.unsplash.com/photo-1593504049359-74330189a345?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
        "Cheese pizza ",
        4.5,
        "15 min - 20 min ",
        20,
        "Chicken ,sweet italian sausagem creminal mushrooms"),
  ];
}
