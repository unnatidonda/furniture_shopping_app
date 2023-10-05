import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';
import 'package:furniture_shopping_app/res/constant/app_strings.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> furnitureList = [
      {
        "populerImage": AppAssets.simpleLamp,
        "price": "\$ 12.00",
        "history": AppStrings.hBlack,
      },
      {
        "populerImage": AppAssets.minimalStand,
        "price": "\$ 25.00",
        "history": AppStrings.hMinimal,
      },
      {
        "populerImage": AppAssets.coffeeChair,
        "price": "\$ 12.00",
        "history": AppStrings.hCoffee,
      },
      {
        "populerImage": AppAssets.simpleDesk,
        "price": "\$ 12.00",
        "history": AppStrings.hSimple,
      }
    ];
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 20,
          color: AppColors.greyL,
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "MAKE HOME",
              style: TextStyle(
                color: AppColors.greyL,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              "BEAUTIFUL",
              style: TextStyle(
                color: AppColors.greyL,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 20,
            color: AppColors.greyL,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: screenWidth / 10,
                height: 10,
                child: Image.asset(
                  AppAssets.roundCh,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.bg,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: furnitureList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 280,
                ),
                itemBuilder: (context, index) {
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        furnitureList[index]["populerImage"],
                        height: screenHeight / 10,
                        width: screenWidth / 5,
                      ),
                      Text(
                        furnitureList[index]["history"],
                        style: TextStyle(
                          color: AppColors.greyL,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        furnitureList[index]["price"],
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
