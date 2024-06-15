import 'package:aspen/domain/models/facility.dart';
import 'package:aspen/domain/models/places.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

///The data layer should not depend on the presentation layer.
/// Currently, it uses static data that will need to be removed later
/// to maintain separation.

List<Facility> facilities = [
  Facility(label: "Wi-Fi", iconData: Icons.wifi_rounded),
  Facility(label: "Dinner", iconData: Icons.dinner_dining_rounded),
  Facility(label: "Hot tub", iconData: Icons.hot_tub),
  Facility(label: "Pool", iconData: Icons.pool_rounded)
];

List<Place> popularPlaces = [
  Place(
      name: "Alley Palace",
      description:
          "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
      rating: "4.5",
      imagePath: AppImages.popular1,
      travelDays: "2D/2N",
      price: "\$150"),
  Place(
      name: "Coeurdes Alpes",
      description:
          "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
      rating: "4.1",
      imagePath: AppImages.popular2,
      travelDays: "3D/4N",
      price: "\$200")
];

List<Place> recommendedPlaces = [
  Place(
      name: "Alley Palace",
      rating: "4.5",
      imagePath: AppImages.recommend1,
      price: "\$120",
      travelDays: "2D/2N"),
  Place(
      name: "Coeurdes Alpes",
      rating: "4.1",
      imagePath: AppImages.recommend2,
      price: "\$140",
      travelDays: "3D/4N")
];
