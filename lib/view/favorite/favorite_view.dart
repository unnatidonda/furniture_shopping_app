import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/view/cart/cart_view.dart';

import '../../res/common/app_favorite.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
            const Text(
              "favorites",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
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
              image: AppAssets.minimalSecond,
            ),
            const Divider(
              thickness: 2,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.minimalThird,
            ),
            const Divider(
              thickness: 2,
              color: AppColors.lightg,
              indent: 15,
              endIndent: 15,
            ),
            const AppFavorites(
              image: AppAssets.lampTwo,
            ),
            SizedBox(height: screenHeight / 20),
            AppButton(
              elevated: "Add to my cart",
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartView(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
