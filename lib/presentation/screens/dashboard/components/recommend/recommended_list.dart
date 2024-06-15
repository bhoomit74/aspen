import 'package:aspen/data/data.dart';
import 'package:aspen/presentation/screens/dashboard/components/recommend/recommend_card.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        itemCount: recommendedPlaces.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return RecommendCard(place: recommendedPlaces[index]);
        },
        separatorBuilder: (context, index) {
          return AppConstants.gap20;
        },
      ),
    );
  }
}
