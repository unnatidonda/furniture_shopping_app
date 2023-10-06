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
    List<Map<String, dynamic>> mainList = [
      {
        "lImage": AppAssets.star,
        "text": "Populer",
      },
      {
        "lImage": AppAssets.chair,
        "text": "Chair",
      },
      {
        "lImage": AppAssets.table,
        "text": "Table",
      },
      {
        "lImage": AppAssets.sofa,
        "text": "Armchair",
      },
      {
        "lImage": AppAssets.bed,
        "text": "Bed",
      },
      {
        "lImage": AppAssets.lamp,
        "text": "Lamb",
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
        actions: const [
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
              itemCount: mainList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight / 18,
                      width: screenWidth / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.bg,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          mainList[index]["lImage"],
                          // color: AppColors.sub,
                        ),
                      ),
                    ),
                    Text(
                      mainList[index]["text"],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyL,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: furnitureList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                // mainAxisSpacing: 1,
                mainAxisExtent: 300,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            furnitureList[index]["populerImage"],
                            width: screenWidth / 2.3,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: screenHeight / 20,
                              width: screenWidth / 10,
                              decoration: BoxDecoration(
                                color: AppColors.lightg,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.shopping_bag,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight / 60),
                      Text(
                        furnitureList[index]["history"],
                        style: const TextStyle(
                          color: AppColors.greyL,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // SizedBox(height: screenHeight / 150),
                      Text(
                        furnitureList[index]["price"],
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
