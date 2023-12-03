import 'controller/tracker_controller.dart';
import 'models/tracker_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_icon_button.dart';
import 'package:flexyatra/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TrackerPage extends StatelessWidget {
  TrackerPage({Key? key})
      : super(
          key: key,
        );

  TrackerController controller = Get.put(TrackerController(TrackerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 311.v),
              child: Column(
                children: [
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildEightyFour(),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 36.h,
                              right: 26.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    endIndent: 4.h,
                                  ),
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.lightGreenA700Cc,
                                    indent: 34.h,
                                    endIndent: 4.h,
                                  ),
                                ),
                                Spacer(
                                  flex: 18,
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    endIndent: 4.h,
                                  ),
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.red500Cc,
                                    indent: 73.h,
                                    endIndent: 4.h,
                                  ),
                                ),
                                Spacer(
                                  flex: 18,
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    endIndent: 4.h,
                                  ),
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.lightBlue500Cc,
                                    indent: 52.h,
                                    endIndent: 4.h,
                                  ),
                                ),
                                Spacer(
                                  flex: 19,
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    endIndent: 3.h,
                                  ),
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.lightGreenA700Cc,
                                    indent: 37.h,
                                    endIndent: 3.h,
                                  ),
                                ),
                                Spacer(
                                  flex: 20,
                                ),
                                SizedBox(
                                  height: 147.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                  ),
                                ),
                                SizedBox(
                                  height: 147.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.redA200,
                                    indent: 68.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage2,
                                  height: 14.v,
                                  width: 12.h,
                                  margin: EdgeInsets.only(
                                    left: 7.h,
                                    top: 93.v,
                                    bottom: 42.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: SizedBox(
                                    height: 148.v,
                                    child: VerticalDivider(
                                      width: 3.h,
                                      thickness: 3.v,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 148.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.lightBlue400,
                                    indent: 20.h,
                                  ),
                                ),
                                Spacer(
                                  flex: 23,
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                  ),
                                ),
                                SizedBox(
                                  height: 149.v,
                                  child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.lightGreenA700Cc,
                                    indent: 50.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              right: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_m".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30.h),
                                    child: Text(
                                      "lbl_t".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 18,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_s".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Spacer(
                                  flex: 18,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_f".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Spacer(
                                  flex: 20,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_t".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Spacer(
                                  flex: 20,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_s".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Spacer(
                                  flex: 21,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_w".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Column(
                                  children: [
                                    CustomIconButton(
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      decoration: IconButtonStyleHelper
                                          .fillLightGreenAC,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup10,
                                      ),
                                    ),
                                    SizedBox(height: 42.v),
                                    CustomIconButton(
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      decoration:
                                          IconButtonStyleHelper.fillRedA,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup9,
                                      ),
                                    ),
                                    SizedBox(height: 42.v),
                                    CustomIconButton(
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      decoration:
                                          IconButtonStyleHelper.fillLightBlue,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 27.h,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_training".tr,
                                        style: CustomTextStyles
                                            .titleMediumBlack900,
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "lbl_4_5_hours".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 37.v),
                                    Text(
                                      "lbl_steps".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                    SizedBox(height: 2.v),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "lbl_24_km_per_week".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 27.v),
                                    Container(
                                      width: 130.h,
                                      margin: EdgeInsets.only(
                                        left: 2.h,
                                        right: 17.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_calories".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage2,
                                            height: 14.v,
                                            width: 12.h,
                                            margin: EdgeInsets.only(
                                              top: 5.v,
                                              bottom: 7.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "msg_6215_calories_burned".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 56.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 102.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgHome,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v),
                              ),
                              Spacer(
                                flex: 52,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgTwitter,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v),
                              ),
                              Spacer(
                                flex: 47,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMealPlanBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 4.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFour() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "lbl_statistics".tr,
            style: CustomTextStyles.titleMediumBlack90018,
          ),
        ),
        CustomTextFormField(
          width: 85.h,
          controller: controller.weekController,
          hintText: "lbl_week".tr,
          hintStyle: theme.textTheme.bodySmall!,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray400.withOpacity(0.2),
        ),
      ],
    );
  }
}
