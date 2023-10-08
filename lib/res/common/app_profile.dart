import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppProfile extends StatelessWidget {
  final String? text;
  final String? name;
  const AppProfile({super.key, this.text, this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.all(screenWidth / 40),
      child: Container(
        width: screenWidth / 1,
        height: screenHeight / 8,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightG,
              offset: Offset(1.4, 1.4),
              blurRadius: 15,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: screenWidth / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight / 60),
              Row(
                children: [
                  Text(
                    text ?? "",
                    style: const TextStyle(
                      color: AppColors.lightBlackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 3, top: screenWidth / 80),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                ],
              ),
              Text(
                name ?? "",
                style: const TextStyle(
                  color: AppColors.greyL,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
