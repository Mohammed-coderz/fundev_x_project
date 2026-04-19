import 'package:flutter/material.dart';
import 'package:sevices/core/theme/colors_manager.dart';
import 'package:sevices/core/widgets/ButtonCustum.dart';
import 'package:sevices/feature/on_boarding/screens/OnBoarding_data.dart';
import 'package:sevices/feature/on_boarding/widgets/BuildOnBoardingItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var onBoardingController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainBlue,
      body: SafeArea(
        child: Container(
          //padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: onBoardingController,
                      onPageChanged: (int index) {
                        if (index == onBoardingDataList.length - 1) {
                          setState(() {
                            isLast = true;
                          });
                        } else {
                          isLast = false;
                        }
                      },
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => BuildOnBoardingItem(
                        onBoardingData: onBoardingDataList[index],
                      ),
                      itemCount: onBoardingDataList.length,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10, right: 10),
                        width: 62,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {
                            // To go Authentication Screen
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: ColorsManager.backgroundColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SmoothPageIndicator(
                controller: onBoardingController,
                count: onBoardingDataList.length,
                effect: const ExpandingDotsEffect(
                  dotColor: ColorsManager.lightGray,
                  activeDotColor: ColorsManager.mainBlue,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 2.5,
                ),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: ButtonCustum(
                  textButton: isLast ? "Get Started" : "Next",
                  onPressed: () {
                    if (isLast) {
                      //submitAndSaveOnBoarding();
                      // To go Authentication Screen
                    } else {
                      onBoardingController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // void submitAndSaveOnBoarding() {
  //   CacheHelper.saveData(
  //     key: 'onboarding',
  //     value: true,
  //   ).then((value) => {
  //         if (value)
  //           {
  //             RouteNavigator.navigateAndFinish(
  //               // ignore: use_build_context_synchronously
  //               context,
  //               const HomeLayout(),
  //             ),
  //           }
  //       });
  // }
}
