// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/theme/custom_button_style.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/view/settings_screen/settings_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_elevated_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

import '../feedback_screen/widgets/chipview_item_widget.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pleasedescribeproblemController =
      TextEditingController();
  // Function to handle the "Submit" button press
  void _onSubmitPressed(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(right: 98.h),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Container(
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Text(
                            "Tell us the problem you encountered",
                            style: CustomTextStyles.bodyLargeGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              _buildChipView(context),
              SizedBox(height: 32.v),
              CustomTextFormField(
                controller: pleasedescribeproblemController,
                hintText:
                    "Please describe your problem (at least 6 characters) ",
                textInputAction: TextInputAction.done,
                maxLines: 8,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGreenTL5,
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 40.v,
                text: "Submit",
                buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
                onPressed: () {
                  _onSubmitPressed(context);
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => SettingsScreen()));
        },
        child: AppbarLeadingIconbuttonOne(
          imagePath: ImageConstant.imgArrowDownPrimary,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 13.v,
            bottom: 12.v,
          ),
        ),
      ),
      title: AppbarSubtitle(
        text: "Feedback",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Wrap(
      runSpacing: 16.v,
      spacing: 16.h,
      children: List<Widget>.generate(1, (index) => ChipviewItemWidget()),
    );
  }
}
