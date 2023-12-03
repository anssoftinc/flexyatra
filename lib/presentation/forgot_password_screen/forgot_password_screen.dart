import 'controller/forgot_password_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/core/utils/validation_functions.dart';
import 'package:flexyatra/widgets/custom_outlined_button.dart';
import 'package:flexyatra/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 415.h,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 922.v,
                width: 415.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 68.h,
                          right: 57.h,
                          bottom: 97.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_password2".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            SizedBox(height: 232.v),
                            CustomTextFormField(
                              controller: controller.newpasswordController,
                              hintText: "lbl_new_password".tr,
                              hintStyle: CustomTextStyles.titleMedium17,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                            SizedBox(height: 21.v),
                            Obx(
                              () => CustomTextFormField(
                                controller:
                                    controller.confirmpasswordController,
                                hintText: "msg_confirm_password".tr,
                                hintStyle: CustomTextStyles.titleMedium17,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 9.v, 24.h, 10.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgFullm2i8a0z5d3a0h7g61,
                                      height: 15.v,
                                      width: 21.h,
                                    ),
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 34.v,
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: controller.isShowPassword.value,
                                contentPadding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 4.v,
                                  bottom: 4.v,
                                ),
                              ),
                            ),
                            SizedBox(height: 70.v),
                            CustomOutlinedButton(
                              width: 188.h,
                              text: "lbl_submit".tr,
                              buttonStyle: CustomButtonStyles.outlineBlackTL201,
                            ),
                            SizedBox(height: 70.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 64.h),
                                child: Text(
                                  "msg_journey_to_wellness".tr,
                                  style: CustomTextStyles.bodyMediumRegular,
                                ),
                              ),
                            ),
                            SizedBox(height: 33.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 10.v,
                                margin: EdgeInsets.only(left: 105.h),
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    spacing: 8,
                                    activeDotColor: appTheme.gray400,
                                    dotColor: appTheme.gray400,
                                    dotHeight: 10.v,
                                    dotWidth: 10.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.h,
                          vertical: 57.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img91369371,
                              height: 86.adaptSize,
                              width: 86.adaptSize,
                              radius: BorderRadius.circular(
                                43.h,
                              ),
                            ),
                            SizedBox(height: 102.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgForgotPassword,
                              height: 153.adaptSize,
                              width: 153.adaptSize,
                              radius: BorderRadius.circular(
                                40.h,
                              ),
                              margin: EdgeInsets.only(
                                left: 18.h,
                                right: 2.h,
                              ),
                            ),
                            SizedBox(height: 54.v),
                            Opacity(
                              opacity: 0.8,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFullm2i8a0z5d3a0h7g61,
                                height: 15.v,
                                width: 21.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 228.h),
                              ),
                            ),
                            SizedBox(height: 74.v),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
