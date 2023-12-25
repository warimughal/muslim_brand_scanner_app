// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_search_view.dart';

import '../history_search_bar_screen/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';

class HistorySearchBarScreen extends StatelessWidget {
  HistorySearchBarScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
              _buildFrameRow(context),
              SizedBox(height: 24.v),
              _buildUserProfileList(context),
              Spacer(),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 45.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomIconButton(
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 64.h,
                          top: 13.v,
                          bottom: 13.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClockPrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "History",
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
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
              hintText: "Chips",
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return UserprofilelistItemWidget();
      },
    );
  }
}
