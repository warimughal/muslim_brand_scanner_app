// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/routes/app_routes.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in or up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInOrUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home / Flash off",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeFlashOffScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home/Flash on One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeFlashOnOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home/Flash on",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeFlashOnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History/no history available",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.historyNoHistoryAvailableScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History search bar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historySearchBarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History selection",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historySelectionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History deleted all",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historyDeletedAllScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product scan view Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productScanViewTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All Related Products",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allRelatedProductsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product scan view One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productScanViewOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add as a Business",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAsABusinessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product scan view Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productScanViewThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchLanguageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Feedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedbackScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
