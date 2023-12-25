// ignore_for_file: must_be_immutable, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_title.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_elevated_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_search_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController searchFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search Language",
                    contentPadding: EdgeInsets.only(
                      top: 11.v,
                      right: 30.h,
                      bottom: 11.v,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildLanguageListView(context),
                  _buildDoneButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageListView(context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _buildSearchField(context),
        SizedBox(
          height: 10,
        ),
        _buildArabicField(context),
        SizedBox(
          height: 10,
        ),
        _buildHindiField(context),
        SizedBox(
          height: 10,
        ),
        _buildPortugueseField(context),
        SizedBox(
          height: 10,
        ),
        _buildGermanField(context),
        SizedBox(
          height: 10,
        ),
        _buildJapaneseField(context),
        SizedBox(
          height: 10,
        ),
        _buildKoreanField(context),
        SizedBox(
          height: 10,
        ),
        _buildChineseField(context),
        SizedBox(
          height: 10,
        ),
        _buildSwedishField(context),
        SizedBox(
          height: 10,
        ),
        _buildSeventySix(context),
        SizedBox(
          height: 10,
        ),
        _buildPersianField(context),
        SizedBox(
          height: 10,
        ),
        _buildTelevisionField(context),
        SizedBox(
          height: 10,
        ),
        _buildDutchField(context),
        SizedBox(
          height: 10,
        ),
        _buildNameField(context),
        SizedBox(
          height: 10,
        ),
        _buildUkranianField(context),
        SizedBox(
          height: 10,
        ),
        _buildUrduField(context),
        SizedBox(
          height: 10,
        ),
        _buildTamilField(context),
        SizedBox(
          height: 10,
        ),
        _buildIndonesianField(context),
        SizedBox(
          height: 10,
        ),
        _buildThaiField(context),
        SizedBox(
          height: 10,
        ),
        _buildBengaliField(context),
      ],
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
          top: 11.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "Language",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchField(BuildContext context) {
    return CustomTextFormField(
      controller: searchFieldController,
      hintText: "English",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrameGray200,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildArabicField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Arabic (العربية)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgArabic,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildHindiField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Hindi (हिंदी)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgHindi,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPortugueseField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Portuguese (Português)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgPortuguese,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildGermanField(BuildContext context) {
    return CustomTextFormField(
      hintText: "German (Deutsch)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGerman,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildJapaneseField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Japanese (日本)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgJapanese,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildKoreanField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Korean (한국인)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgKorean,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildChineseField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Chinese (中国人)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgChinese,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildSwedishField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Swedish (svenska)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgSwedish,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildItalianField(BuildContext context) {
    return CustomTextFormField(
      width: 396.h,
      hintText: "Italian (Italiano)",
      alignment: Alignment.bottomCenter,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgItalian,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildDoneButton(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      width: 396.h,
      text: "Done",
      margin: EdgeInsets.only(top: 28.v),
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return SizedBox(
      height: 128.v,
      width: 396.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 72.v),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPolish,
                    height: 20.v,
                    width: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Polish (Polski)",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(right: 3.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray700,
                      borderRadius: BorderRadius.circular(
                        9.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildItalianField(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersianField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Persian (فارسی)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgPersian,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 23.v),
    );
  }

  /// Section Widget
  Widget _buildTelevisionField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Spanish (Español)",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgTelevision,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 23.v),
    );
  }

  /// Section Widget
  Widget _buildDutchField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Dutch (Nederlands)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgDutch,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Vietnamese (Tiếng Việt)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgVietnamese,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildUkranianField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Ukranian (українська)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgUkranian,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildUrduField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Urdu (اردو)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgUrdu,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildTamilField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Tamil (தமிழ்)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgTamil,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildIndonesianField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Indonesian (bahasa Indonesia)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgPolish,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildThaiField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Thai (แบบไทย)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgThai,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildBengaliField(BuildContext context) {
    return CustomTextFormField(
      hintText: "Bengali (বাংলা)",
      hintStyle: CustomTextStyles.bodyMediumProductSans,
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgBengali,
          height: 20.v,
          width: 24.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgRadiobuttonuncheckedsvgrepocom,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }
}
