import 'package:aspen/domain/models/places.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  final Place place;
  const RecommendCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          color: AppColors.primary,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(place.imagePath)),
          borderRadius: AppConstants.borderRadius16,
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
              padding: AppConstants.padding8,
              margin: AppConstants.padding8,
              decoration: BoxDecoration(
                  color: AppColors.black70,
                  borderRadius: AppConstants.borderRadius24,
                  border: Border.all(color: AppColors.white, width: 0)),
              child: Text(place.travelDays,
                  style: AppTextStyle.caption(color: AppColors.white))),
        ));
  }
}
