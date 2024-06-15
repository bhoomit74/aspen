import 'package:aspen/data/data.dart';
import 'package:aspen/presentation/screens/detail_screen/components/facilities/facility_item.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class FacilitiesList extends StatelessWidget {
  const FacilitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: facilities.length,
        itemBuilder: (context, index) {
          return FacilityItem(facility: facilities[index]);
        },
        separatorBuilder: (context, index) {
          return AppConstants.gap20;
        },
      ),
    );
  }
}
