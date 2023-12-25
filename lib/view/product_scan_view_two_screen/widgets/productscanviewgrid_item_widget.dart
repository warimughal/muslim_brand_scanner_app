import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ProductscanviewgridItemWidget extends StatelessWidget {
  const ProductscanviewgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle28486,
      height: 130.v,
      width: 122.h,
      radius: BorderRadius.circular(
        15.h,
      ),
    );
  }
}
