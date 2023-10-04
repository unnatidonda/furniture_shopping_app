import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_assets.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

import '../../res/constant/app_strings.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            SizedBox(height: screenHeight / 30),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 23,
                    endIndent: 5,
                    color: AppColors.lightGrey,
                  ),
                ),
                SizedBox(width: screenWidth / 60),
                Image.asset(
                  AppAssets.back,
                  height: screenHeight / 11,
                ),
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 23,
                    indent: 5,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 50),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.welcome,
              style: TextStyle(
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            SizedBox(height: screenHeight / 50),
            Container(
              height: screenHeight / 2,
              width: screenWidth / 1.1,
              decoration: const BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    offset: Offset(1.4, 1.4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight / 20),
                  Container(
                    height: screenHeight / 9.5,
                    width: screenWidth / 1.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightG,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenWidth / 40, left: screenWidth / 20),
                          child: const Text(
                            "Email",
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth / 20, top: screenWidth / 80),
                          child: TextFormField(
                            // controller: emailcontroller,
                            validator: (value) {
                              if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                                return "Enter email id ";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: "Enter email ",
                              contentPadding: EdgeInsets.all(12),
                              hintStyle: TextStyle(color: Color(0xFFB3B3B3), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
