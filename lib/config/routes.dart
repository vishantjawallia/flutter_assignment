import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/author_detail_screen/author_detail_screen_view.dart';
import 'package:flutter_assignment/views/dashboard_screen/dashboard_screen_view.dart';
import 'package:flutter_assignment/views/splash/splash_view.dart';
import 'package:flutter_assignment/views/tag_detail_screen/tag_detail_screen_view.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(name: DashboardScreenView.routeName, page: () => DashboardScreenView()),
    GetPage(name: TagDetailScreenView.routeName, page: () => const TagDetailScreenView(0)),
    GetPage(name: AuthorDetailScreenView.routeName, page: () => const AuthorDetailScreenView(0)),
    GetPage(name: SplashView.routeName, page: () => const SplashView()),
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    DashboardScreenView.routeName: (p0) => DashboardScreenView(),
    TagDetailScreenView.routeName: (p0) => const TagDetailScreenView(0),
    AuthorDetailScreenView.routeName: (p0) => const AuthorDetailScreenView(0),
    SplashView.routeName: (p0) => const SplashView(),
  };
}
