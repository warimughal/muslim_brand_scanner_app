import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class ProductScanViewDialog extends StatelessWidget {
  const ProductScanViewDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPrimary50x50,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          SizedBox(height: 28.v),
          Text(
            "Details Saved",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 24.v),
          Container(
            width: 341.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Text(
              "Your business details are saved in our database. A company representative will contact you soon!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
