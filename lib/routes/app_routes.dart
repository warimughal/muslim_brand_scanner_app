// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/view/add_as_a_business_screen/add_as_a_business_screen.dart';
import 'package:muslim_brand_scanner_app/view/all_related_products_screen/all_related_products_screen.dart';
import 'package:muslim_brand_scanner_app/view/app_navigation_screen/app_navigation_screen.dart';
import 'package:muslim_brand_scanner_app/view/feedback_screen/feedback_screen.dart';
import 'package:muslim_brand_scanner_app/view/history_deleted_all_screen/history_deleted_all_screen.dart';
import 'package:muslim_brand_scanner_app/view/history_no_history_available_screen/history_no_history_available_screen.dart';
import 'package:muslim_brand_scanner_app/view/history_screen/history_screen.dart';
import 'package:muslim_brand_scanner_app/view/history_search_bar_screen/history_search_bar_screen.dart';
import 'package:muslim_brand_scanner_app/view/history_selection_screen/history_selection_screen.dart';
import 'package:muslim_brand_scanner_app/view/home_flash_off_screen/home_flash_off_screen.dart';
import 'package:muslim_brand_scanner_app/view/language_screen/language_screen.dart';
import 'package:muslim_brand_scanner_app/view/product_scan_view_one_screen/product_scan_view_one_screen.dart';
import 'package:muslim_brand_scanner_app/view/product_scan_view_three_screen/product_scan_view_three_screen.dart';
import 'package:muslim_brand_scanner_app/view/product_scan_view_two_screen/product_scan_view_two_screen.dart';
import 'package:muslim_brand_scanner_app/view/search_language_screen/search_language_screen.dart';
import 'package:muslim_brand_scanner_app/view/settings_screen/settings_screen.dart';
import 'package:muslim_brand_scanner_app/view/sign_in_or_up_screen/sign_in_or_up_screen.dart';
import 'package:muslim_brand_scanner_app/view/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInOrUpScreen = '/sign_in_or_up_screen';

  static const String homeFlashOffScreen = '/home_flash_off_screen';

  static const String homeFlashOnOneScreen = '/home_flash_on_one_screen';

  static const String homeFlashOnScreen = '/home_flash_on_screen';

  static const String historyNoHistoryAvailableScreen =
      '/history_no_history_available_screen';

  static const String historyScreen = '/history_screen';

  static const String historySearchBarScreen = '/history_search_bar_screen';

  static const String historySelectionScreen = '/history_selection_screen';

  static const String historyDeletedAllScreen = '/history_deleted_all_screen';

  static const String productScanViewTwoScreen =
      '/product_scan_view_two_screen';

  static const String allRelatedProductsScreen = '/all_related_products_screen';

  static const String productScanViewOneScreen =
      '/product_scan_view_one_screen';

  static const String addAsABusinessScreen = '/add_as_a_business_screen';

  static const String productScanViewThreeScreen =
      '/product_scan_view_three_screen';

  static const String settingsScreen = '/settings_screen';

  static const String languageScreen = '/language_screen';

  static const String searchLanguageScreen = '/search_language_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signInOrUpScreen: (context) => SignInOrUpScreen(),
    homeFlashOffScreen: (context) => HomeFlashOffScreen(),
    historyNoHistoryAvailableScreen: (context) =>
        HistoryNoHistoryAvailableScreen(),
    historyScreen: (context) => HistoryScreen(),
    historySearchBarScreen: (context) => HistorySearchBarScreen(),
    historySelectionScreen: (context) => HistorySelectionScreen(),
    historyDeletedAllScreen: (context) => HistoryDeletedAllScreen(),
    productScanViewTwoScreen: (context) => ProductScanViewTwoScreen(),
    allRelatedProductsScreen: (context) => AllRelatedProductsScreen(),
    productScanViewOneScreen: (context) => ProductScanViewOneScreen(),
    addAsABusinessScreen: (context) => AddAsABusinessScreen(),
    productScanViewThreeScreen: (context) => ProductScanViewThreeScreen(),
    settingsScreen: (context) => SettingsScreen(),
    languageScreen: (context) => LanguageScreen(),
    searchLanguageScreen: (context) => SearchLanguageScreen(),
    feedbackScreen: (context) => FeedbackScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
