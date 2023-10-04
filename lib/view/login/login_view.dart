import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/constant/app_strings.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: screenHeight / 30),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 23,
                    endIndent: 5,
                    color: AppColors.lightGrey,
                  ),
                ),
                SizedBox(width: screenWidth / 60),
                Image.asset(
                  AppAssets.back,
                  height: screenHeight / 11,
                ),
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 23,
                    indent: 5,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.welcome,
              style: TextStyle(
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
