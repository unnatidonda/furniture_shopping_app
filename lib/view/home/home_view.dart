// import 'package:flutter/material.dart';
// import 'package:furniture_shopping_app/res/constant/app_assets.dart';
// import 'package:furniture_shopping_app/res/constant/app_colors.dart';
// import 'package:furniture_shopping_app/res/constant/app_strings.dart';
//
// class HomeView extends StatelessWidget {
//   const HomeView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> furnitureList = [
//       {
//         "populerImage": AppAssets.light,
//         "price": "\$ 12.00",
//         "history": AppStrings.hBlack,
//       },
//       {
//         "populerImage": AppAssets.bchair,
//         "price": "\$ 25.00",
//         "history": AppStrings.hMinimal,
//       },
//       {
//         "populerImage": AppAssets.table,
//         "price": "\$ 12.00",
//         "history": AppStrings.hCoffee,
//       },
//       {
//         "populerImage": AppAssets.stool,
//         "price": "\$ 12.00",
//         "history": AppStrings.hSimple,
//       }
//     ];
//     Size size = MediaQuery.of(context).size;
//     double screenHeight = size.height;
//     double screenWidth = size.width;
//     EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
//     return Scaffold(
//       appBar: AppBar(
//         actions: const [
//           Icon(
//             Icons.search,
//             size: 20,
//             color: AppColors.sub,
//           ),
//           Column(
//             children: [
//               Text(
//                 "mack home",
//                 style: TextStyle(
//                   color: AppColors.sub,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                 ),
//               ),
//               Text(
//                 "mack home",
//                 style: TextStyle(
//                   color: AppColors.sub,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//           Icon(
//             Icons.shopping_cart_outlined,
//             size: 20,
//             color: AppColors.sub,
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Padding(
//               padding: EdgeInsets.only(left: 1),
//               child: Row(children: [
//                 Container(
//                   width: screenWidth / 10,
//                   height: screenHeight / 20,
//                   child: Image.asset(
//                     AppAssets.roundCh,
//                   ),
//                   decoration: BoxDecoration(
//                     color: AppColors.bg,
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 Container(
//                   width: screenWidth / 10,
//                   height: screenHeight / 20,
//                   child: Image.asset(
//                     AppAssets.roundCh,
//                   ),
//                   decoration: BoxDecoration(
//                     color: AppColors.bg,
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 Container(
//                   width: screenWidth / 10,
//                   height: screenHeight / 20,
//                   child: Image.asset(AppAssets.roundCh),
//                   decoration: BoxDecoration(
//                     color: AppColors.bg,
//                   ),
//                 ),
//               ]),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: furnitureList.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 25,
//                   crossAxisSpacing: 20,
//                   mainAxisExtent: 280,
//                 ),
//                 itemBuilder: (context, index) {
//                   Column(
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         furnitureList[index]["populerImage"],
//                         height: screenHeight / 10,
//                         width: screenWidth / 5,
//                       ),
//                       Text(
//                         furnitureList[index]["history"],
//                         style: const TextStyle(
//                           color: AppColors.sub,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       Text(
//                         furnitureList[index]["price"],
//                         style: const TextStyle(
//                           color: AppColors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
