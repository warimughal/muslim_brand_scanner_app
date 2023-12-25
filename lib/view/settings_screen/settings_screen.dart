// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/routes/app_routes.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_title.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_rating_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

// Function to show the Rate Us dialog
  void _showRateUsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: 300,
            height: 300.0,
            padding: EdgeInsets.only(right: 2),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle,
                              height: 14.v,
                              width: 11.h,
                              margin: EdgeInsets.only(top: 9.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle15x7,
                              height: 15.v,
                              width: 7.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 7.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle14x11,
                              height: 14.v,
                              width: 11.h,
                              margin: EdgeInsets.only(
                                left: 17.h,
                                top: 9.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 9.v),
                              child: _buildSixtyFive(
                                context,
                                image1: ImageConstant.imgRectangle9x15,
                                image2: ImageConstant.imgRectangle46x44,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle54x56,
                              height: 54.v,
                              width: 56.h,
                              margin: EdgeInsets.only(
                                left: 3.h,
                                bottom: 21.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 9.v,
                              ),
                              child: _buildSixtyFive(
                                context,
                                image1: ImageConstant.imgRectangle1,
                                image2: ImageConstant.imgRectangle2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.v),
                        Text(
                          "Rate us",
                          style: CustomTextStyles.titleLargePoppinsPrimary,
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          width: 321.h,
                          child: Text(
                            "We work Super hard to serve you better would love to know how would you rate our app?",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomRatingBar(
                          initialRating: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRateUs(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: 316.v,
        width: 396.h,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCloseSvgrepoCom,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyFive(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: image1,
          height: 9.v,
          width: 15.h,
          margin: EdgeInsets.only(left: 3.h),
        ),
        SizedBox(height: 10.v),
        CustomImageView(
          imagePath: image2,
          height: 46.v,
          width: 44.h,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "General",
                  style: CustomTextStyles.titleMediumMedium,
                ),
              ),
              SizedBox(height: 31.v),
              _buildGeneralRow(context),
              SizedBox(height: 16.v),
              _buildShareRow(
                context,
                starImage: ImageConstant.imgShare2SvgrepoCom,
                rateText: "Share",
              ),
              SizedBox(height: 16.v),
              GestureDetector(
                onTap: () {
                  _showRateUsDialog(context);
                },
                child: _buildRateUsRow(
                  context,
                  starImage: ImageConstant.imgStarSharpSvgrepoCom,
                  rateText: "Rate us",
                ),
              ),
              SizedBox(height: 16.v),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.feedbackScreen);
                },
                child: _buildFeedbackRow(
                  context,
                  starImage: ImageConstant.imgFeedbackSvgrepoCom,
                  rateText: "Feedback",
                ),
              ),
              SizedBox(height: 16.v),
              _buildPrivacyPolicyRow(
                context,
                starImage: ImageConstant.imgFrameWhiteA700,
                rateText: "Privacy Policy",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowDownPrimary,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarTitle(
        text: "Settings",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 125.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.gradientCyanToOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLanguageAltSvgrepoCom,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Language",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.languageScreen);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 5.v),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRateUsRow(
    BuildContext context, {
    required String starImage,
    required String rateText,
  }) {
    Color backgroundColor = Colors.purple; // Change the color here

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: starImage,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              rateText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedbackRow(
    BuildContext context, {
    required String starImage,
    required String rateText,
  }) {
    Color backgroundColor = Colors.green;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: starImage,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              rateText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyPolicyRow(
    BuildContext context, {
    required String starImage,
    required String rateText,
  }) {
    Color backgroundColor = Colors.blue; // Change the color here

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: starImage,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              rateText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShareRow(
    BuildContext context, {
    required String starImage,
    required String rateText,
  }) {
    Color backgroundColor = Colors.green;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: starImage,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Text(
              rateText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
