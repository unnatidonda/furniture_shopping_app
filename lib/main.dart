import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/utils/routes/app_routes.dart';
import 'package:furniture_shopping_app/utils/routes/routes_names.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.getPages,
      initialRoute: RoutesNames.boarding,
    );
  }
}
