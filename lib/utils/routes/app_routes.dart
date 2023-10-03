import 'package:furniture_shopping_app/utils/routes/routes_names.dart';
import 'package:furniture_shopping_app/view/boarding/boarding_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/login_view.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: RoutesNames.boarding,
      page: () => const BoardingView(),
    ),
    GetPage(
      name: RoutesNames.loginView,
      page: () => const LoginView(),
    )
  ];
}
