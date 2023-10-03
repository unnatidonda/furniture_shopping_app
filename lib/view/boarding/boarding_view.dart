import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';
import 'package:get/get.dart';

import '../../res/constant/app_assets.dart';
import '../../utils/routes/routes_names.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppAssets.bordings),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight / 12,
              ),
              const Text(
                AppStrings.makeYourHome,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.lightBlackColor,
                ),
              ),
              SizedBox(
                height: screenHeight / 32,
              ),
              const Text(
                "The best simple place where you\ndiscover most wonderful furnitures and\nmake your home beautiful",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  fixedSize: MaterialStatePropertyAll(Size(screenWidth / 1, screenHeight / 18)),
                  backgroundColor: const MaterialStatePropertyAll(AppColors.lightBlackColor),
                ),
                onPressed: () {
                  Get.offNamed(RoutesNames.loginView);
                },
                child: const Text(
                  AppStrings.getStarted,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
