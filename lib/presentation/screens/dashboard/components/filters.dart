import 'package:aspen/presentation/app_common_widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 48,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            AppChip(label: "Location", onPressed: () {}, isSelected: true),
            AppChip(label: "Hotel", onPressed: () {}),
            AppChip(label: "Food", onPressed: () {}),
            AppChip(label: "Adventure", onPressed: () {}),
            AppChip(label: "Places", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
