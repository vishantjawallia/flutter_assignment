// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/config/config.dart';
import 'package:flutter_assignment/config/routes.dart';
import 'package:flutter_assignment/theme/theme.dart';
import 'package:get/get.dart';
import 'core/locator.dart';
import 'core/providers.dart';
import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/splash/splash_view.dart';

void main() async {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await LocatorInjector.setupLocator();
  runApp(
    MultiProvider(
      providers: ProviderInjector.providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      title: APP_NAME,
      // darkTheme: CustomTheme.dark,
      theme: CustomTheme.light,
      navigatorKey: locator<NavigatorService>().navigatorKey,
      getPages: Routes.routes,
      home: const SplashView(),
    );
  }
}
