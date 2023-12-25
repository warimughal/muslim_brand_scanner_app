// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumProductSans => theme.textTheme.bodyMedium!.productSans;
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSemiBold_1 => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePoppins_1 => theme.textTheme.titleLarge!.poppins;
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get productSans {
    return copyWith(
      fontFamily: 'Product Sans',
    );
  }
}
