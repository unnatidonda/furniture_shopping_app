import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class ShoppingAddressView extends StatelessWidget {
  const ShoppingAddressView({super.key});

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
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.lightBlackColor,
                    size: 25,
                  ),
                ),
                SizedBox(width: screenWidth / 4),
                const Text(
                  AppStrings.shippingAddress,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            Checkbox(
              value: value,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
