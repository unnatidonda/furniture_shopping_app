import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class CongratsView extends StatelessWidget {
  const CongratsView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                AppStrings.success,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  fontSize: 32,
                ),
              ),
              Image.asset(
                AppAssets.graphics,
                height: screenHeight / 3,
                // width: screenWidth / 2,
              ),
              SizedBox(height: screenHeight / 30),
              const Text(
                "Your order will be delivered soon.\nThank you for choosing our app!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyL,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: screenHeight / 10),
              const AppButton(
                elevated: "track your order",
              ),
              SizedBox(height: screenHeight / 50),
              const AppButton(
                elevated: "back to home",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
