// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_button_style.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/view/all_related_products_screen/all_related_products_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_elevated_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

import '../product_scan_view_two_screen/widgets/productscanviewgrid_item_widget.dart';
import 'package:flutter/material.dart';

class ProductScanViewTwoScreen extends StatelessWidget {
  const ProductScanViewTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildFrameColumn(context),
                  SizedBox(height: 32.v),
                  _buildFrameRow(context),
                  SizedBox(height: 24.v),
                  _buildProductScanViewGrid(context),
                ],
              ),
            ),
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
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Product",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUpPrimary,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 13.v,
            right: 13.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgShareSolid,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 13.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle28485,
          height: 232.v,
          width: 396.h,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        SizedBox(height: 16.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 76.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "07 Aug,2023",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgClockPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "01:23 PM",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            "Related Products",
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AllRelatedProductsScreen()));
          },
          child: CustomElevatedButton(
            height: 30.v,
            width: 55.h,
            text: "More",
            rightIcon: Container(
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowleftPrimary,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillGreen,
            buttonTextStyle: CustomTextStyles.labelLargePrimary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductScanViewGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 131.v,
        crossAxisCount: 3,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 9,
      itemBuilder: (context, index) {
        return ProductscanviewgridItemWidget();
      },
    );
  }
}
