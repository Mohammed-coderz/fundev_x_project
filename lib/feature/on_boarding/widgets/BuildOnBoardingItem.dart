import 'dart:core';

import 'package:flutter/material.dart';
import 'package:sevices/core/theme/colors_manager.dart';
import 'package:sevices/feature/on_boarding/screens/OnBoarding_data.dart';

// ignore: must_be_immutable
class BuildOnBoardingItem extends StatelessWidget {
  OnBoardingData onBoardingData;
  double radius = 32;

  BuildOnBoardingItem({required this.onBoardingData, super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: ColorsManager.mainBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius),
            ),
          ),
          child: Image.asset(onBoardingData.image, fit: BoxFit.contain),
        ),
        const SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                onBoardingData.titleDecription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.textBlackColor,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                onBoardingData.subTitleDecription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 2.0,
                  color: ColorsManager.lighterGray,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),
      ],
    );
  }
}
