import 'controller/profile_page_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/app_bar/appbar_leading_image.dart';
import 'package:flexyatra/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flexyatra/widgets/app_bar/custom_app_bar.dart';
import 'package:flexyatra/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends GetWidget<ProfilePageController> {
  const ProfilePageScreen({Key? key}) : super(key: key);

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
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 31.h, right: 35.h, bottom: 54.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 92.h),
                                            child: Text("lbl_hemant_rai".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900)),
                                        Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 92.h),
                                                child: Text(
                                                    "msg_kathmandu_nepal".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack900Regular))),
                                        SizedBox(height: 56.v),
                                        Text("lbl_information".tr,
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 2.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: Text("lbl_edit_profile".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: Text("lbl_username".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        SizedBox(height: 6.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: Text("lbl_email".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: Text("lbl_password".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        SizedBox(height: 3.v),
                                        _buildSeventy(),
                                        SizedBox(height: 140.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 50.adaptSize,
                                                          width: 50.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  11.h),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgHomeWhiteA700)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgTwitter,
                                                          height: 25.adaptSize,
                                                          width: 25.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v,
                                                                  bottom:
                                                                      11.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMealPlan,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 15.v,
                                                                  bottom:
                                                                      11.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgTracker,
                                                          height: 23.v,
                                                          width: 25.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v,
                                                                  bottom: 11.v))
                                                    ])))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding:
                                      EdgeInsets.only(top: 33.v, right: 53.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 92.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage4,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            margin: EdgeInsets.only(left: 7.h)),
                                        SizedBox(height: 11.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage5,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 6.h)),
                                        SizedBox(height: 10.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage7,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 6.h)),
                                        SizedBox(height: 8.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage8,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            margin: EdgeInsets.only(left: 7.h)),
                                        SizedBox(height: 65.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage9,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 6.h)),
                                        SizedBox(height: 12.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage10,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(left: 9.h)),
                                        SizedBox(height: 8.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage11,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 8.h)),
                                        SizedBox(height: 85.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage12,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 9.h)),
                                        SizedBox(height: 10.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage13,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 9.h)),
                                        SizedBox(height: 12.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage14,
                                            height: 19.adaptSize,
                                            width: 19.adaptSize,
                                            margin: EdgeInsets.only(left: 9.h)),
                                        SizedBox(height: 79.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.only(left: 55.h, top: 3.v, right: 55.h))
        ]);
  }

  /// Section Widget
  Widget _buildSeventy() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30.v),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("lbl_preferences".tr,
                        style: theme.textTheme.titleLarge)),
                SizedBox(height: 2.v),
                Padding(
                    padding: EdgeInsets.only(right: 21.h),
                    child: Text("lbl_notifications".tr,
                        style: theme.textTheme.bodyMedium)),
                SizedBox(height: 9.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("lbl_language".tr,
                        style: theme.textTheme.bodyMedium)),
                SizedBox(height: 6.v),
                Padding(
                    padding: EdgeInsets.only(right: 21.h),
                    child: Text("lbl_my_payment".tr,
                        style: theme.textTheme.bodyMedium)),
                SizedBox(height: 49.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text("lbl_account".tr,
                            style: theme.textTheme.titleLarge))),
                SizedBox(height: 1.v),
                Padding(
                    padding: EdgeInsets.only(right: 17.h),
                    child: Text("lbl_add_account".tr,
                        style: theme.textTheme.bodyMedium)),
                SizedBox(height: 6.v),
                Text("lbl_switch_account".tr,
                    style: theme.textTheme.bodyMedium),
                SizedBox(height: 9.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 36.h),
                        child: Text("lbl_log_out".tr,
                            style: theme.textTheme.bodyMedium)))
              ])),
          CustomImageView(
              imagePath: ImageConstant.img91369372,
              height: 156.adaptSize,
              width: 156.adaptSize,
              radius: BorderRadius.circular(78.h),
              margin: EdgeInsets.only(bottom: 202.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
