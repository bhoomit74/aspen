import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final String rating;
  const Rating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppConstants.padding8,
        margin: AppConstants.paddingH16,
        decoration: BoxDecoration(
            color: AppColors.black70,
            borderRadius: AppConstants.borderRadius24),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star_rounded, color: Colors.amber, size: 18),
            AppConstants.gap4,
            Text(rating, style: AppTextStyle.body(color: AppColors.white)),
            AppConstants.gap4,
          ],
        ));
  }
}
