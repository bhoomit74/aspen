import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class LocationSelector extends StatelessWidget {
  const LocationSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.locationIcon, height: 16, width: 16),
        AppConstants.gap8,
        Text("Aspen, USA", style: AppTextStyle.caption()),
        AppConstants.gap8,
        const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.primary)
      ],
    );
  }
}
