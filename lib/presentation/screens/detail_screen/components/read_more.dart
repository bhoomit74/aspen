import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppStrings.readMore,
          style: AppTextStyle.button(color: AppColors.primary),
        ),
        AppConstants.gap8,
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
