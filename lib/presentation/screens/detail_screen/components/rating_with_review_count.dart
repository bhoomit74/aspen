import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class RatingWithReviewCounts extends StatelessWidget {
  final String rating;
  final String? totalReviews;
  const RatingWithReviewCounts(
      {super.key, required this.rating, this.totalReviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.amber,
          size: 18,
        ),
        AppConstants.gap4,
        Text(rating, style: AppTextStyle.body()),
        AppConstants.gap4,
        Text("($totalReviews Reviews)", style: AppTextStyle.body())
      ],
    );
  }
}
