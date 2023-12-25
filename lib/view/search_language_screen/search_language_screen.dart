// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_search_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

class SearchLanguageScreen extends StatelessWidget {
  SearchLanguageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController arabicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildFrameSection(context),
              SizedBox(height: 32.v),
              CustomTextFormField(
                controller: arabicController,
                hintText: "Arabic (العربية)",
                textInputAction: TextInputAction.done,
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
                contentPadding: EdgeInsets.only(
                  top: 17.v,
                  right: 30.h,
                  bottom: 17.v,
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
  Widget _buildFrameSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(2.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownPrimary,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "aaa",
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
