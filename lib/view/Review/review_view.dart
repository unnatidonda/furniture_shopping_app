import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_strings.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Column(
          children: [
            const Row(
              children: [
                BackButton(
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(25),
                  ),
                  color: AppColors.lightBlackColor,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.minimalFirst,
                    height: screenHeight / 8,
                  ),
                  SizedBox(width: screenWidth / 50),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40, left: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight / 50),
                        const Text(
                          AppStrings.minimal,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.lightBlackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: screenHeight / 120),
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.starOne,
                              width: screenWidth / 18,
                            ),
                            SizedBox(width: screenWidth / 40),
                            const Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 24,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight / 120),
                        const Text(
                          "10 reviews",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  width: 30,
                  left: 20,
                  child: Image.asset(AppAssets.avatar),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth / 10),
                  child: Container(
                    width: screenWidth / 1.1,
                    height: screenHeight / 4.2,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
