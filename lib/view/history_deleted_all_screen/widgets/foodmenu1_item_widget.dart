import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Foodmenu1ItemWidget extends StatelessWidget {
  const Foodmenu1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2848670x70,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chips , Baked Potato's , Cheetos ",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 7.v),
                Row(
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
                        left: 4.h,
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
                        left: 4.h,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
