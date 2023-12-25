// ignore_for_file: prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

import '../history_screen/widgets/foodmenu_item_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildFoodMenu(context),
              Spacer(),
              SizedBox(height: 49.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 45.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomIconButton(
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 64.h,
                          top: 13.v,
                          bottom: 13.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClockPrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "History",
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ],
                        ),
                      ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "History",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgContrastPrimary,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 12.v,
            right: 13.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgEllipsisVerticalSolid,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 12.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFoodMenu(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return FoodmenuItemWidget();
      },
    );
  }
}
