import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: AppColors.primary,
        cursorWidth: 0.8,
        style: AppTextStyle.body(),
        decoration: InputDecoration(
          hintText: AppStrings.dashboardSearchHint,
          hintStyle: AppTextStyle.body(color: AppColors.grey),
          contentPadding: AppConstants.padding16,
          fillColor: AppColors.blue100,
          filled: true,
          border: _border,
          focusedBorder: _border,
          enabledBorder: _border,
          prefixIcon: Padding(
            padding: AppConstants.paddingH16,
            child: Image.asset(
              AppImages.searchIcon,
              width: 24,
              height: 24,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(maxHeight: 24),
        ));
  }

  OutlineInputBorder get _border => OutlineInputBorder(
      borderRadius: AppConstants.borderRadius24,
      borderSide: const BorderSide(width: 0, color: Colors.transparent));
}
