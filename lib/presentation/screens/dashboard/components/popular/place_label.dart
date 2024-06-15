import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class PlaceLabel extends StatelessWidget {
  final String placeName;
  const PlaceLabel({super.key, required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppConstants.padding8,
      margin: AppConstants.paddingH16,
      decoration: BoxDecoration(
        color: AppColors.black70,
        borderRadius: AppConstants.borderRadius24,
      ),
      child: Text(
        placeName,
        style: AppTextStyle.body(color: AppColors.white),
      ),
    );
  }
}
