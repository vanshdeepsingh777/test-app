import 'package:flutter/material.dart';
import '../../core/constants.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BannerTile(image: AppConstants.logoUrl, text: AppConstants.freeDelivery),
        SizedBox(height: 10),
        BannerTile(image: AppConstants.logoUrl, text: AppConstants.flatDiscount),
      ],
    );
  }
}

class BannerTile extends StatelessWidget {
  final String image;
  final String text;

  const BannerTile({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
