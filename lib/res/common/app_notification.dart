import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_strings.dart';

class AppNotification extends StatelessWidget {
  final String? image;
  final String? name;
  const AppNotification({super.key, this.image, this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.all(screenWidth / 30),
      child: Row(
        children: [
          Image.asset(
            image ?? "",
            height: screenHeight / 8,
          ),
          SizedBox(width: screenWidth / 60),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight / 50),
                const Text(
                  AppStrings.oderSuccessfully,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.lightBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight / 120),
                Row(
                  children: [
                    const Text(
                      AppStrings.dolor,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyL,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: screenWidth / 40),
                    Text(
                      name ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
