import 'package:flutter/material.dart';
import 'package:mommypulse/presentation/iphone_14_15_pro_max_six_screen/iphone_14_15_pro_max_six_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxSixScreen =
      '/iphone_14_15_pro_max_six_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxSixScreen: (context) => Iphone1415ProMaxSixScreen()
  };
}
