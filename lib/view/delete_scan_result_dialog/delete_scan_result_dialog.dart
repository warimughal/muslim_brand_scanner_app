// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_button_style.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_elevated_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

class DeleteScanResultDialog extends StatelessWidget {
  const DeleteScanResultDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDeleteScanResult(context);
  }

  /// Section Widget
  Widget _buildDeleteScanResult(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 194.v,
            width: 396.h,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delete", style: theme.textTheme.titleMedium),
                            SizedBox(height: 24.v),
                            Text("Are you sure you want to delete Scan Result?",
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 30.v),
                            Row(children: [
                              CustomElevatedButton(
                                  width: 162.h,
                                  text: "Cancel",
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallGray700_1),
                              CustomElevatedButton(
                                  width: 162.h,
                                  text: "Delete",
                                  margin: EdgeInsets.only(left: 24.h),
                                  buttonStyle:
                                      CustomButtonStyles.fillSecondaryContainer,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallWhiteA700)
                            ])
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgCloseGray500,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                  onTap: () {
                    onTapImgClose(context);
                  })
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
