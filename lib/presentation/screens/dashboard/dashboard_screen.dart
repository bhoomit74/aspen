import 'package:aspen/presentation/app_common_widgets/app_widgets.dart';
import 'package:aspen/presentation/screens/dashboard/components/filters.dart';
import 'package:aspen/presentation/screens/dashboard/components/header.dart';
import 'package:aspen/presentation/screens/dashboard/components/popular/popular_list.dart';
import 'package:aspen/presentation/screens/dashboard/components/recommend/recommended_list.dart';
import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: AppConstants.padding14,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Header(),
                AppConstants.gap20,
                const AppSearchBar(),
                AppConstants.gap20,
                const Filters(),
                AppConstants.gap32,
                Text(AppStrings.popular, style: AppTextStyle.h4()),
                AppConstants.gap20,
                const PopularList(),
                AppConstants.gap32,
                Text(AppStrings.recommended, style: AppTextStyle.h4()),
                AppConstants.gap20,
                const RecommendedList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
