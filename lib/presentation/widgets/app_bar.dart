import 'package:flutter/material.dart';
import '../../core/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(AppConstants.logoUrl, height: 30),
              const SizedBox(width: 8),
              const Text(AppConstants.appTitle, style: TextStyle(fontSize: 16)),
            ],
          ),
          const Icon(Icons.shopping_bag_outlined)
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
