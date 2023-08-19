import 'package:flutter_assignment/views/dashboard_screen/dashboard_screen_view.dart';
import 'package:flutter_assignment/views/splash/splash_view.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: DashboardScreenView.routeName, page: () => DashboardScreenView()),
    GetPage(name: SplashView.routeName, page: () => const SplashView()),
  ];
}
