import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/res/constant/app_colors.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favorite",
          style: TextStyle(
            color: AppColors.lightBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
              // children: [Image.asset()],
              ),
        ],
      ),
    );
  }
}
