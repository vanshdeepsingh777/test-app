import '../../core/constants.dart';

class FoodItem {
  final String name;
  final String price;
  final String image;

  FoodItem({required this.name, required this.price, required this.image});

  static List<FoodItem> getFoodItems() {
    return [
      FoodItem(name: "Baby Pizza", price: "₹49.00", image: AppConstants.logoUrl),
      FoodItem(name: "Burgar Aalu Tikki", price: "₹42.00", image: AppConstants.logoUrl),
      FoodItem(name: "PASTRY BLACK FOREST", price: "₹50.00", image: AppConstants.logoUrl),
    ];
  }
}
// Food Item Model