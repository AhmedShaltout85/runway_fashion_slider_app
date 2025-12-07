import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/screens/detail_screen/detail_screen.dart';
// import 'package:runway_fashion_slider_app/screens/category/category_screen.dart';
// import 'package:runway_fashion_slider_app/screens/detail_screen/detail_screen.dart';
// import 'package:runway_fashion_slider_app/screens/detail_screen/more_detail_screen.dart';
// import 'package:runway_fashion_slider_app/screens/detail_screen/detail_screen_2.dart';
import 'package:runway_fashion_slider_app/screens/home/runway_screen.dart';
import 'package:runway_fashion_slider_app/utils/app_routes.dart';

import 'screens/detail_screen/detail_screen_2.dart';
import 'screens/detail_screen/more_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Runway Fashion Slider App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const RunwayScreen(),
      initialRoute: AppRoutes.runwayRouteName,
      routes: {
        AppRoutes.runwayRouteName: (context) => const RunwayScreen(),
        AppRoutes.moreDetailRouteName: (context) => const MoreDetailScreen(),
        AppRoutes.detailRouteName: (context) => const DetailScreen(),
        AppRoutes.detail2RouteName: (context) => const DetailScreenTwo(),
      },
    );
  }
}
