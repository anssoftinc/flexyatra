import 'controller/workout_plan_page_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/app_bar/appbar_leading_image.dart';
import 'package:flexyatra/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flexyatra/widgets/app_bar/custom_app_bar.dart';
import 'package:flexyatra/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WorkoutPlanPageScreen extends GetWidget<WorkoutPlanPageController> {
  const WorkoutPlanPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 922.v,
                        width: 415.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.h, top: 50.v),
                                  child: Text("lbl_find_your".tr,
                                      style: CustomTextStyles
                                          .displayMediumLight))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 39.h, top: 112.v),
                                  child: Text("lbl_activity".tr,
                                      style: CustomTextStyles
                                          .displayMediumRed700))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 45.h, top: 227.v),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Column(children: [
                                          Text("lbl_workout_plans".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                              width: 73.h,
                                              child: Divider(
                                                  color: appTheme.black900))
                                        ])),
                                    Opacity(
                                        opacity: 0.5,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 17.h),
                                            child: Text("lbl_meal_plans".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)))
                                  ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 225.v, right: 45.h),
                                      child: Text("lbl_tracker".tr,
                                          style: theme.textTheme.bodyLarge)))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 62.h, right: 62.h, bottom: 37.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildUntitledOne(),
                                        SizedBox(height: 250.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 4.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage2,
                                                          height: 14.v,
                                                          width: 12.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 1.v,
                                                                  bottom: 4.v)),
                                                      Opacity(
                                                          opacity: 0.5,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          8.h),
                                                              child: Text(
                                                                  "lbl_200kcal_hr"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumBlack900)))
                                                    ]))),
                                        SizedBox(height: 49.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 13.h, right: 1.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgHome,
                                                      height: 25.adaptSize,
                                                      width: 25.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 11.v,
                                                          bottom: 14.v)),
                                                  Spacer(flex: 36),
                                                  CustomIconButton(
                                                      height: 50.adaptSize,
                                                      width: 50.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(11.h),
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgActivity)),
                                                  Spacer(flex: 28),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMealPlanBlack900,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 15.v,
                                                          bottom: 11.v)),
                                                  Spacer(flex: 34),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTracker,
                                                      height: 23.v,
                                                      width: 25.h,
                                                      margin: EdgeInsets.only(
                                                          top: 15.v,
                                                          bottom: 11.v))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.h, vertical: 125.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder60),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 153.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUntitled1,
                                            height: 200.v,
                                            width: 320.h,
                                            radius:
                                                BorderRadius.circular(40.h)),
                                        SizedBox(height: 57.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGym021,
                                            height: 217.v,
                                            width: 325.h,
                                            radius:
                                                BorderRadius.circular(40.h)),
                                        SizedBox(height: 8.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 12.h),
                                                child: Text(
                                                    "lbl_weight_training".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900Medium
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline))))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 69.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.only(left: 49.h, top: 3.v, right: 49.h))
        ]);
  }

  /// Section Widget
  Widget _buildUntitledOne() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUntitled1,
                  height: 200.v,
                  width: 320.h,
                  radius: BorderRadius.circular(40.h),
                  margin: EdgeInsets.only(bottom: 32.v)),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, top: 205.v),
                  child: Text("lbl_cardio".tr,
                      style: CustomTextStyles.titleMediumBlack900Medium
                          .copyWith(decoration: TextDecoration.underline))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 14.v,
                  width: 12.h,
                  margin: EdgeInsets.only(top: 209.v, bottom: 9.v)),
              Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.h, top: 205.v, bottom: 6.v),
                      child: Text("lbl_300kcal_hr".tr,
                          style: CustomTextStyles.bodyMediumBlack900)))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
