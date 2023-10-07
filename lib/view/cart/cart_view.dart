import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/common/app_favorite.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_strings.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

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
                const BackButton(
                  style: ButtonStyle(iconSize: MaterialStatePropertyAll(25)),
                  color: AppColors.lightBlackColor,
                ),
                SizedBox(width: screenWidth / 3.5),
                const Text(
                  textAlign: TextAlign.center,
                  AppStrings.myCart,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const AppFavorites(
              image: AppAssets.minimalFirst,
            ),
            const Divider(
              thickness: 2,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.myCartTwo,
            ),
            const Divider(
              thickness: 2,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.myCartThree,
            ),
            const Divider(
              thickness: 2,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.tableTwo,
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                Container(
                  height: screenHeight / 20,
                  width: screenWidth / 1.2,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      hintText: "Enter your promo code",
                      contentPadding: EdgeInsets.all(12),
                      hintStyle: TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: screenWidth / 10,
                  height: screenHeight / 20,
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth / 60),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.total,
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: screenWidth / 1.6),
                const Text(
                  "\$ 95.00",
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            AppButton(
              elevated: "Check out",
            )
          ],
        ),
      ),
    );
  }
}
