import 'package:flutter/material.dart';
import '../../core/network/home_service.dart';
import '../widgets/app_bar.dart';
import '../widgets/banner_tile.dart';
import '../widgets/food_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController();

    return Scaffold(
      appBar: CustomAppBar(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),
            const PromotionalBanner(),
            const SizedBox(height: 16),
            const Text('Most Popular Items', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(child: FoodList(foodItems: controller.getPopularItems())),
          ],
        ),
      ),
    );
  }
}

