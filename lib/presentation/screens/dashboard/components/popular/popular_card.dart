import 'package:aspen/domain/models/places.dart';
import 'package:aspen/presentation/screens/dashboard/components/popular/place_label.dart';
import 'package:aspen/presentation/screens/dashboard/components/popular/rating.dart';
import 'package:aspen/presentation/screens/detail_screen/detail_screen.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final Place place;
  const PopularCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToDetailScreen(context),
      child: Container(
          width: 220,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: AppConstants.borderRadius32,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(place.imagePath),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlaceLabel(placeName: place.name),
              AppConstants.gap8,
              Rating(rating: place.rating),
              AppConstants.gap20
            ],
          )),
    );
  }

  navigateToDetailScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => DetailScreen(place: place)));
  }
}
