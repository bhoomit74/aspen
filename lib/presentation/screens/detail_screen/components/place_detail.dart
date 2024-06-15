import 'package:aspen/domain/models/places.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

import 'rating_with_review_count.dart';
import 'read_more.dart';

class PlaceDetail extends StatelessWidget {
  final Place place;
  const PlaceDetail({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(place.name, style: AppTextStyle.h3()),
        AppConstants.gap4,
        RatingWithReviewCounts(rating: place.rating, totalReviews: "503"),
        AppConstants.gap20,
        Text(place.description, style: AppTextStyle.body()),
        AppConstants.gap8,
        const ReadMore(),
      ],
    );
  }
}
