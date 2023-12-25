// ignore_for_file: must_be_immutable, prefer_final_fields, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/routes/app_routes.dart';
import 'package:muslim_brand_scanner_app/theme/theme_helper.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_checkbox_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_elevated_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_icon_button.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';
import 'package:muslim_brand_scanner_app/widgets/custom_text_form_field.dart';

class SignInOrUpScreen extends StatefulWidget {
  SignInOrUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInOrUpScreen> createState() => _SignInOrUpScreenState();
}

class _SignInOrUpScreenState extends State<SignInOrUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberPassword = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsLightGreen400,
                  height: 44.v,
                  width: 15.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 75.v),
                CustomImageView(
                  imagePath: ImageConstant.imgQrCodeBro,
                  height: 196.v,
                  width: 200.h,
                ),
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsLightGreen600,
                  height: 65.v,
                  width: 25.h,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomTextFormField(
                    controller: emailController,
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 14.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 44.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                      bottom: 13.v,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "Password",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 14.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTrophy,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 44.v,
                    ),
                    obscureText: true,
                    contentPadding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                      bottom: 13.v,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildSignInOrUpFrame(context),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.homeFlashOffScreen);
                  },
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                ),
                SizedBox(height: 9.v),
                _buildLineElevenFrame(context),
                SizedBox(height: 10.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrameBlueA400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSeventyThree(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInOrUpFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomCheckboxButton(
              text: "Remember Password ",
              value: rememberPassword,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              onChange: (value) {
                setState(() {
                  rememberPassword = value;
                });
              },
              checkboxColor: Colors.green,
            ),
          ),
          Text(
            "Forget Password?",
            style: theme.textTheme.titleSmall!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineElevenFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.v),
              height: 1.0,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(
              "Or",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.v),
              height: 1.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFire,
            height: 41.v,
            width: 48.h,
            margin: EdgeInsets.only(top: 23.v),
          ),
          Spacer(
            flex: 47,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpCyan100,
            height: 37.v,
            width: 40.h,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 12.v,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 65.v,
            width: 32.h,
          ),
        ],
      ),
    );
  }
}
