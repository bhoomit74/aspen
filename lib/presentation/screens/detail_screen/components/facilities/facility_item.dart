import 'package:aspen/domain/models/facility.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final Facility facility;
  const FacilityItem({super.key, required this.facility});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: AppConstants.padding8,
        decoration: BoxDecoration(
          color: AppColors.blue100,
          borderRadius: AppConstants.borderRadius16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(facility.iconData, color: AppColors.grey, size: 32),
            AppConstants.gap8,
            Text(facility.label, style: AppTextStyle.body())
          ],
        ),
      ),
    );
  }
}
