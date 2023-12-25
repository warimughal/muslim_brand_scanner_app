import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

class ProductScanViewOneScreen extends StatelessWidget {
  const ProductScanViewOneScreen({Key? key})
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
              CustomImageView(
                imagePath: ImageConstant.imgRectangle28486,
                height: 327.v,
                width: 396.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              SizedBox(height: 24.v),
              _buildProductCategory(context),
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
        imagePath: ImageConstant.imgArrowDownPrimary30x30,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Baked Chips",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgShareSolid,
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 13.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCategory(BuildContext context) {
    return Container(
      width: 396.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              Text(
                "Product Category:",
                style: CustomTextStyles.labelLargeGray900,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "Snacks Chips",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            children: [
              Text(
                "Product Name:",
                style: CustomTextStyles.labelLargeGray900,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.h),
                child: Text(
                  "Baked Potatos",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "Product Company:",
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Cheetos",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
