// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green800.withOpacity(0.1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientCyanToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.cyan300,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.green400,
            appTheme.lightBlue900,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.indigoA200,
            appTheme.indigoA700,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToLightGreen =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.lightGreen900,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToPurpleA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.purple900,
            appTheme.purpleA400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
