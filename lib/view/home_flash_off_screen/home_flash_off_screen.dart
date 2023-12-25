// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, avoid_print

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:muslim_brand_scanner_app/core/utils/image_constant.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';
import 'package:muslim_brand_scanner_app/routes/app_routes.dart';
import 'package:muslim_brand_scanner_app/theme/app_decoration.dart';
import 'package:muslim_brand_scanner_app/theme/custom_text_style.dart';
import 'package:muslim_brand_scanner_app/view/history_no_history_available_screen/history_no_history_available_screen.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muslim_brand_scanner_app/widgets/app_bar/custom_app_bar.dart';

import 'package:muslim_brand_scanner_app/widgets/custom_image_view.dart';

class HomeFlashOffScreen extends StatefulWidget {
  const HomeFlashOffScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeFlashOffScreen> createState() => _HomeFlashOffScreenState();
}

class _HomeFlashOffScreenState extends State<HomeFlashOffScreen> {
  late CameraController _controller;

  bool isFlashOn = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.low);
    await _controller.initialize();
  }

  void _toggleFlashlight() {
    if (_controller.value.flashMode == FlashMode.torch) {
      _controller.setFlashMode(FlashMode.off);
      setState(() {
        isFlashOn = false;
      });
    } else {
      _controller.setFlashMode(FlashMode.torch);
      setState(() {
        isFlashOn = true;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//For image Picker
  bool isLoadingImage = false;
  bool isImageUploaded = false;
  String? imageUrl;

  File? image;
  Future<void> pickImage(source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage == null) {
      return;
    }
    setState(() {
      isLoadingImage = true;
      image = File(pickedImage.path);
    });

    setState(() {
      isLoadingImage = false;
    });
  }

  void _handleCameraIconTap() {
    // Handle the logic for the camera icon here
    pickImage(ImageSource.camera);
  }

  void _handleGalleryIconTap() {
    // Handle the logic for the gallery icon here
    pickImage(ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 49.v,
          ),
          child: Column(
            children: [
              _buildFrame(context),
              Spacer(
                flex: 47,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2,
                height: 310.v,
                width: 308.h,
              ),
              Spacer(
                flex: 52,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _toggleFlashlight();
                      },
                      child: CustomImageView(
                        imagePath: isFlashOn
                            ? ImageConstant.flash
                            : ImageConstant.flashslash,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: SizedBox(
                        height: 32.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _handleCameraIconTap();
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCameraSolid,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(
                          left: 23.h,
                          bottom: 2.v,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: SizedBox(
                        height: 32.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _handleGalleryIconTap();
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserWhiteA700,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(
                          left: 23.h,
                          bottom: 2.v,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 18.v,
                width: 20.h,
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 32.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: ShapeDecoration(
                                  color: Color(0x190A8432),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 5,
                              top: 5,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: ShapeDecoration(
                                  color: Color(0x190A8432),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF098331),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ],
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
                              imagePath: ImageConstant.imgClock,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 8.v),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        HistoryNoHistoryAvailableScreen()));
                              },
                              child: Text(
                                "History",
                                style: CustomTextStyles.bodyMediumGray500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleOne(
        text: "MuzCheck",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.productScanViewTwoScreen);
          },
          child: AppbarTrailingIconbutton(
            imagePath: ImageConstant.briefcase,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              right: 13.h,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('Tapped on settings icon');
            Navigator.of(context).pushNamed(AppRoutes.settingsScreen);
          },
          child: AppbarTrailingIconbutton(
            imagePath: ImageConstant.setting,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              right: 13.h,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.addAsABusinessScreen);
          },
          child: AppbarTrailingIconbutton(
            imagePath: ImageConstant.profile,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              right: 29.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return InteractiveViewer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // Handle zoom-in action
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          Container(
            width: 280.h,
            height: 1.0,
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v),
          ),
          GestureDetector(
            onTap: () {},
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ),
        ],
      ),
    );
  }
}
