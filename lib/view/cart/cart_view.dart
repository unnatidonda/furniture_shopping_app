import 'package:flutter/material.dart';
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
            Container(),
            TextFormField(
              decoration: const InputDecoration(
                // border: InputBorder.none,

                isDense: true,
                hintText: "Enter your promo code",
                contentPadding: EdgeInsets.all(12),
                hintStyle: TextStyle(color: Color(0xFFB3B3B3), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
