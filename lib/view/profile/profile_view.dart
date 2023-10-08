import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/common/app_profile.dart';
import '../../res/constant/app_strings.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: screenWidth / 20),
                Image.asset(
                  AppAssets.favoriteProfile,
                  height: screenHeight / 10,
                  width: screenWidth / 5,
                ),
                SizedBox(width: screenWidth / 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.kristinWatson,
                      style: TextStyle(
                        color: AppColors.lightBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      AppStrings.emailProfile,
                      style: TextStyle(
                        color: AppColors.greyL,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppProfile(
              text: AppStrings.myOrders,
              name: AppStrings.alreadyOrders,
            ),
            AppProfile(
              text: AppStrings.shippingAddresses,
              name: AppStrings.address3,
            ),
            AppProfile(
              text: AppStrings.paymentMethod,
              name: AppStrings.haveCard,
            ),
            AppProfile(
              text: AppStrings.myReview,
              name: AppStrings.reviewItems,
            ),
            AppProfile(
              text: AppStrings.setting,
              name: AppStrings.nPFC,
            ),
          ],
        ),
      ),
    );
  }
}
