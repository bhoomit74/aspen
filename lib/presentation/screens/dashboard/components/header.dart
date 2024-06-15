import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

import 'location_selector.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.explore, style: AppTextStyle.body()),
            Text(AppStrings.aspen, style: AppTextStyle.h2()),
          ],
        ),
        const LocationSelector()
      ],
    );
  }
}
