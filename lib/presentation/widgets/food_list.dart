import 'package:flutter/material.dart';
import '../../data/models/food_item_model.dart';
import 'food_item_tile.dart';

class FoodList extends StatelessWidget {
  final List<FoodItem> foodItems;

  const FoodList({super.key, required this.foodItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        return FoodItemTile(foodItem: foodItems[index]);
      },
    );
  }
}
