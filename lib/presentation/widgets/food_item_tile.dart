import 'package:flutter/material.dart';
import '../../data/models/food_item_model.dart';

class FoodItemTile extends StatelessWidget {
  final FoodItem foodItem;

  const FoodItemTile({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(foodItem.image, width: 50, height: 50),
        title: Text(foodItem.name),
        subtitle: Text(foodItem.price),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text('Add'),
        ),
      ),
    );
  }
}
