import 'package:aspen/domain/models/places.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

import 'components/book_now.dart';
import 'components/facilities/facilities_list.dart';
import 'components/place_detail.dart';
import 'components/place_image.dart';

class DetailScreen extends StatelessWidget {
  final Place place;
  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                PlaceImage(imagePath: place.imagePath),
                AppConstants.gap20,
                PlaceDetail(place: place),
                AppConstants.gap20,
                Text(AppStrings.facilities, style: AppTextStyle.h4()),
                AppConstants.gap8,
                const FacilitiesList(),
                AppConstants.gap20,
                BookNow(price: place.price),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
