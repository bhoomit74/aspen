import 'package:aspen/data/data.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

import 'popular_card.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: popularPlaces.length,
        itemBuilder: (_, index) {
          return PopularCard(place: popularPlaces[index]);
        },
        separatorBuilder: (_, __) {
          return AppConstants.gap20;
        },
      ),
    );
  }
}
