import 'package:aspen/presentation/styles/styles.dart';
import 'package:flutter/material.dart';

class PlaceImage extends StatelessWidget {
  final String imagePath;
  const PlaceImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: AppConstants.borderRadius24,
          child: Image.asset(
            imagePath,
            width: double.maxFinite,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 16,
          top: 16,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: AppConstants.borderRadius16,
                color: AppColors.white.withOpacity(0.3),
              ),
              child: const Icon(Icons.keyboard_backspace_rounded,
                  color: AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}
