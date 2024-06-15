import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_common_widgets/app_widgets.dart';
import '../dashboard/dashboard_screen.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: AppConstants.padding32,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(AppImages.mountain))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Text(
                AppStrings.aspen,
                style: TextStyle(
                    fontSize: 116,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.kaushanScript().fontFamily),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.planYour,
                  style: AppTextStyle.h3Normal(color: AppColors.white)),
              Text(
                AppStrings.luxuriousVacation,
                style: AppTextStyle.h1(color: AppColors.white),
              ),
              AppConstants.gap20,
              AppButton(
                label: AppStrings.explore,
                onPressed: () => navigateToDashboard(context),
              ),
              AppConstants.gap20,
            ],
          ),
        ],
      ),
    ));
  }

  navigateToDashboard(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ));
  }
}
