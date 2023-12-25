// ignore_for_file: unnecessary_import, prefer_final_fields, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 32,
        space: 32,
        color: appTheme.whiteA700,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();

  void changeTheme(String s) {}
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF098331),
    secondaryContainer: Color(0XFFCB4D4D),

    // On colors(text colors)
    onPrimary: Color(0XFF130CB7),
    onPrimaryContainer: Color(0XFF36CE57),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA400 => Color(0XFFFFC600);

  // BlackB
  Color get black900B2 => Color(0XB2000000);

  // Blue
  Color get blueA400 => Color(0XFF1877F2);

  // BlueGray
  Color get blueGray900 => Color(0XFF263238);

  // Cyan
  Color get cyan100 => Color(0XFFA0DBEE);
  Color get cyan300 => Color(0XFF52E5E7);

  // DeepOrange
  Color get deepOrange50 => Color(0XFFFFE4D9);
  Color get deepOrange500 => Color(0XFFFF4B26);
  Color get deepOrangeA100 => Color(0XFFECA469);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray300 => Color(0XFFDEDEDE);
  Color get gray500 => Color(0XFF999999);
  Color get gray700 => Color(0XFF666666);
  Color get gray900 => Color(0XFF222222);

  // Green
  Color get green400 => Color(0XFF4ECC7B);
  Color get green800 => Color(0XFF0A8432);

  // Indigo
  Color get indigoA200 => Color(0XFF6B73FF);
  Color get indigoA700 => Color(0XFF000DFF);

  // LightBlue
  Color get lightBlue400 => Color(0XFF1CB0F6);
  Color get lightBlue900 => Color(0XFF0C5199);

  // LightGreen
  Color get lightGreen400 => Color(0XFF9BB865);
  Color get lightGreen600 => Color(0XFF809A40);
  Color get lightGreen900 => Color(0XFF238012);
  Color get lightGreenA700 => Color(0XFF7AC70C);
  Color get lightGreenA70001 => Color(0XFF78C800);

  // Orange
  Color get orange200 => Color(0XFFF2BB6B);

  // Purple
  Color get purple900 => Color(0XFF5F2673);
  Color get purpleA400 => Color(0XFFD91DE1);

  // Red
  Color get redA200 => Color(0XFFFF4B4B);

  // Teal
  Color get teal600 => Color(0XFF009468);
  Color get teal900 => Color(0XFF055E43);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
