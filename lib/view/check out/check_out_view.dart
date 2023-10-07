import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/common/app_button.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // const AppHedding(
              //   name: "Check out",
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.address,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.greyL,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.border_color_outlined,
                    color: AppColors.black,
                    size: 24,
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 50),
              Container(
                height: screenHeight / 7.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.brunofe,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lightg,
                        // indent: 15,
                        // endIndent: 15,
                      ),
                      Text(
                        "25 rue Robert Latouche, Nice, 06200, \nCôte D’azur, France",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyL,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.payment,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyL,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.border_color_outlined,
                    color: AppColors.black,
                    size: 24,
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 50),
              Container(
                height: screenHeight / 11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: screenHeight / 20,
                        width: screenWidth / 6,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            AppAssets.card,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 50),
                      const Text(
                        AppStrings.pay,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.delivery,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyL,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.border_color_outlined,
                    color: AppColors.black,
                    size: 24,
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 50),
              Container(
                height: screenHeight / 11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.logo,
                        width: screenWidth / 5,
                      ),
                      SizedBox(width: screenWidth / 50),
                      const Text(
                        AppStrings.day,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Container(
                height: screenHeight / 7.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.order,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyL,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\$95.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight / 100),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.delivery,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyL,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\$5.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightBlackColor,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight / 100),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.total,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyL,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\$100.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 30),
              AppButton(
                elevated: "submit order",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
