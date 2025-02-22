import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function() onPressed;
  const AppChip(
      {super.key,
      required this.label,
      this.isSelected = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Chip(
        label: Text(label,
            style: isSelected ? AppTextStyle.activeChip : AppTextStyle.chip),
        backgroundColor: isSelected ? AppColors.blue100 : Colors.transparent,
        side: const BorderSide(color: Colors.transparent, width: 0),
        padding: AppConstants.padding14,
        shape:
            RoundedRectangleBorder(borderRadius: AppConstants.borderRadius32),
      ),
    );
  }
}
