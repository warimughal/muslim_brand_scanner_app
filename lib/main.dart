// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/routes/app_routes.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'wari_s_application3',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
