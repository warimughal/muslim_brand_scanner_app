// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';

class ChipviewItemWidget extends StatefulWidget {
  const ChipviewItemWidget({Key? key}) : super(key: key);

  @override
  _ChipviewItemWidgetState createState() => _ChipviewItemWidgetState();
}

class _ChipviewItemWidgetState extends State<ChipviewItemWidget> {
  String selectedChip = ""; // Keep track of the selected chip

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildChip("Crash"),
            SizedBox(width: 16.h),
            buildChip("App not responding"),
            SizedBox(width: 16.h),
            buildChip("Page not loading"),
          ],
        ),
        SizedBox(height: 16.v), // Add spacing between rows
        Row(
          children: [
            buildChip("Function Disabled"),
            SizedBox(width: 16.h),
            buildChip("Don't know how to use"),
          ],
        ),
        SizedBox(height: 16.v),
        Row(
          children: [
            buildChip("Suggestions"),
            SizedBox(width: 16.h),
            buildChip("Others"),
          ],
        ),
      ],
    );
  }

  Widget buildChipsRow(List<String> chipTexts) {
    return Row(
      children: List.generate(chipTexts.length, (index) {
        return buildChip(chipTexts[index]);
      }),
    );
  }

  Widget buildChip(String text) {
    return RawChip(
      padding: EdgeInsets.all(8.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        text,
        style: TextStyle(
          color: selectedChip == text ? Colors.white : appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: selectedChip == text,
      backgroundColor: selectedChip == text
          ? Colors.green
          : appTheme.green800.withOpacity(0.1),
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(5.h),
      ),
      onSelected: (value) {
        setState(() {
          selectedChip = value ? text : ""; // Update the selected chip
        });
      },
    );
  }
}
