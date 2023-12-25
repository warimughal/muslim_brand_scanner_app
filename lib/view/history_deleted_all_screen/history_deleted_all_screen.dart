// ignore_for_file: prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

import '../history_deleted_all_screen/widgets/foodmenu1_item_widget.dart';
import 'package:flutter/material.dart';

class HistoryDeletedAllScreen extends StatelessWidget {
  const HistoryDeletedAllScreen({Key? key})
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
            vertical: 11.v,
          ),
          child: Column(
            children: [
              _buildFoodMenu(context),
              SizedBox(height: 54.v),
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
      leadingWidth: 40.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCloseCircleSvgrepoCom,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "All Selected",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUpPrimary,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 13.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCheckmarkPrimary,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 13.v,
            right: 28.h,
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
      itemCount: 6,
      itemBuilder: (context, index) {
        return Foodmenu1ItemWidget();
      },
    );
  }
}
