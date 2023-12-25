// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

class ProductScanViewThreeScreen extends StatelessWidget {
  ProductScanViewThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle28486,
                height: 300.v,
                width: 396.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Name",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 8.v),
              CustomTextFormField(
                controller: nameController,
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray100,
              ),
              SizedBox(height: 15.v),
              _buildProductDetails(context),
              SizedBox(height: 15.v),
              _buildProductInfo(context),
              SizedBox(height: 16.v),
              _buildProductAvailability(context),
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
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Product Details",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product EAN Code",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 8.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product SKU Code",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 8.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController1,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFrame(context),
        _buildFrame1(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Price",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 8.v),
            CustomTextFormField(
              width: 190.h,
              controller: priceController,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Description",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 7.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController2,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFrame2(context),
        _buildFrame3(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Type",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController3,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Availability",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 7.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController4,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductAvailability(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFrame4(context),
        _buildFrame5(context),
      ],
    );
  }
}
