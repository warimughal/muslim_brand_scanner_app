// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/view/sign_in_or_up_screen/sign_in_or_up_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInOrUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 308.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230.adaptSize,
                        width: 230.adaptSize,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: DottedBorder(
                                color: appTheme.whiteA700,
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 6.v,
                                  right: 6.h,
                                  bottom: 6.v,
                                ),
                                strokeWidth: 6.h,
                                radius: Radius.circular(115),
                                borderType: BorderType.RRect,
                                dashPattern: [
                                  2,
                                  2,
                                ],
                                child: Container(
                                  decoration:
                                      AppDecoration.outlineWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder115,
                                  ),
                                  child: Container(
                                    height: 220.adaptSize,
                                    width: 220.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        110.h,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto20231220020214,
                              height: 150.v,
                              width: 116.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 31.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Muz",
                              style: CustomTextStyles.headlineLargeSemiBold_1,
                            ),
                            TextSpan(
                              text: "Check",
                              style: theme.textTheme.headlineLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 164.v),
                      _buildSixtyNineRow(context),
                    ],
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
  Widget _buildSixtyNineRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 69.v,
            width: 70.h,
            margin: EdgeInsets.only(top: 75.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 80.v,
            width: 78.h,
            margin: EdgeInsets.only(top: 63.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 144.v,
            width: 66.h,
          ),
        ],
      ),
    );
  }
}
