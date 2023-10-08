import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_notification.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_strings.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

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
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.notification,
                style: TextStyle(
                  color: AppColors.lightBlackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            const AppNotification(
              name: "New",
              image: AppAssets.tableTwo,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 20, right: screenWidth / 20),
              child: const Divider(
                height: 1,
                color: AppColors.lightGrey,
                thickness: 1,
              ),
            ),
            const AppNotification(
              name: "New",
              image: AppAssets.myCartTwo,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 20, right: screenWidth / 20),
              child: const Divider(
                height: 1,
                color: AppColors.lightGrey,
                thickness: 1,
              ),
            ),
            const AppNotification(
              name: "New",
              image: AppAssets.notificationThree,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 20, right: screenWidth / 20),
              child: const Divider(
                height: 1,
                color: AppColors.lightGrey,
                thickness: 1,
              ),
            ),
            const AppNotification(
              name: "New",
              image: AppAssets.notificationfour,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth / 20,
                right: screenWidth / 20,
              ),
              child: const Divider(
                height: 1,
                color: AppColors.lightGrey,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
