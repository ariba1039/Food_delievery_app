// we need to create our sare model for the food card
class FoodCardModel {
  String? food;
  String? img_url;
  String? restorant;
  String? time;
  double? note;

  double? price;
  String? description;

  FoodCardModel(this.img_url, this.food, this.restorant, this.note, this.time,
      this.price, this.description);
}
