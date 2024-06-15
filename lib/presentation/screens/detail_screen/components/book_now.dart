import 'package:aspen/presentation/app_common_widgets/app_widgets.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class BookNow extends StatelessWidget {
  final String price;
  const BookNow({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppStrings.price, style: AppTextStyle.body()),
            Text(price, style: AppTextStyle.h3(color: Colors.green)),
          ],
        ),
        AppConstants.gap64,
        Flexible(child: AppButton(label: AppStrings.bookNow, onPressed: () {}))
      ],
    );
  }
}
