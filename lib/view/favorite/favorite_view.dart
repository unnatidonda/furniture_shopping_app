import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/constant/app_strings.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          textAlign: TextAlign.center,
          "Favorite",
          style: TextStyle(
            color: AppColors.lightBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenWidth / 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenWidth / 20),
              C(
                child: Image.asset(
                  AppAssets.product,
                  width: screenWidth / 4,
                  height: screenHeight / 7.5,
                ),
              ),
              SizedBox(width: screenWidth / 50),
              const Text(
                textAlign: TextAlign.start,
                AppStrings.fMinimal,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: AppColors.greyL,
                ),
              ),
              SizedBox(width: screenWidth / 10),
              const CloseButton(
                style: ButtonStyle(
                  iconSize: MaterialStatePropertyAll(22),
                ),
                color: AppColors.lightBlackColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
