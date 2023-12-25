// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';

import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/view/add_as_a_business_screen/add_as_a_business_screen.dart';
import 'package:muslim_brand_scanner_app/view/product_scan_view_two_screen/product_scan_view_two_screen.dart';
import 'package:muslim_brand_scanner_app/view/settings_screen/settings_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

class AppbarTrailingIconbutton extends StatelessWidget {
  final String? imagePath;
  final EdgeInsetsGeometry? margin;

  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
  }) : super(key: key);

  void _handleIconTap(BuildContext context) {
    // Perform navigation based on the tapped icon
    if (imagePath == ImageConstant.briefcase) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => ProductScanViewTwoScreen()));
    } else if (imagePath == ImageConstant.setting) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => SettingsScreen()));
    } else if (imagePath == ImageConstant.profile) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => AddAsABusinessScreen()));
    }
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
