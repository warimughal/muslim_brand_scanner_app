// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/view/home_flash_off_screen/home_flash_off_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbuttonOne extends StatelessWidget {
  final String? imagePath;
  final EdgeInsetsGeometry? margin;

  AppbarLeadingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
  }) : super(key: key);

  void _handleIconTap(BuildContext context) {
    // Perform navigation based on the tapped icon
    if (imagePath == ImageConstant.imgArrowDownPrimary) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => HomeFlashOffScreen()));
    }
    // Add more conditions for other icons/screens if needed
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleIconTap(context),
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          child: CustomImageView(
            imagePath: imagePath ?? ImageConstant.defaultImage,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
        ),
      ),
    );
  }
}
