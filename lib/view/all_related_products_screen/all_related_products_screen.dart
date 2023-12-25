// ignore_for_file: prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';

import '../all_related_products_screen/widgets/allrelatedproducts_item_widget.dart';
import 'package:flutter/material.dart';

class AllRelatedProductsScreen extends StatelessWidget {
  const AllRelatedProductsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 11.v,
            right: 16.h,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 131.v,
              crossAxisCount: 3,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: 18,
            itemBuilder: (context, index) {
              return AllrelatedproductsItemWidget();
            },
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
        text: "Related Product",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }
}
