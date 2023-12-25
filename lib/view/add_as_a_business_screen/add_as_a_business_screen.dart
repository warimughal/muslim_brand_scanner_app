// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

class AddAsABusinessScreen extends StatelessWidget {
  AddAsABusinessScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController companyNameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController personDetailsController = TextEditingController();

  TextEditingController personEmailController = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

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
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Company Name",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 14.v),
              _buildCompanyName(context),
              SizedBox(height: 16.v),
              _buildCompanyDetails(context),
              SizedBox(height: 15.v),
              _buildContactDetails(context),
              SizedBox(height: 16.v),
              _buildProductDetails(context),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Upload Picture",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  padding: EdgeInsets.all(24.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAddCircleSvgrepoComPrimary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Company Person Details",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 20.v),
              _buildThirtyTwo(context),
              SizedBox(height: 15.v),
              _buildThirtySix(context),
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
        text: "Add a Brand",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAddCircleSvgrepoCom,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCompanyName(BuildContext context) {
    return CustomTextFormField(
      controller: companyNameController,
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray100,
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: editTextController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray100,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: emailController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray100,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCompanyDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 77.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Company ID",
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "Company Email",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        SizedBox(height: 6.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEditText(context),
            _buildEmail(context),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          right: 8.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Company Address",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              width: 190.h,
              controller: addressController,
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
              "Contact Number",
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
  Widget _buildContactDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFrame(context),
        _buildFrame1(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCategory(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Category",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
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
  Widget _buildBrandAvailability(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Brand Availability",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 7.v),
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
  Widget _buildProductDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildProductCategory(context),
        _buildBrandAvailability(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildPersonDetails(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: personDetailsController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray100,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: personEmailController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray100,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 151.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name",
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "Email",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPersonDetails(context),
            _buildPersonEmail(context),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPersonDesignation(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          right: 8.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Designation",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController4,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonContactNumber(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Number",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 8.v),
            CustomTextFormField(
              width: 190.h,
              controller: editTextController5,
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
  Widget _buildThirtySix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPersonDesignation(context),
        _buildPersonContactNumber(context),
      ],
    );
  }
}
