import '../../data/models/food_item_model.dart';

class HomeController {
  List<FoodItem> getPopularItems() {
    return FoodItem.getFoodItems();
  }
}
