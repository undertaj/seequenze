import 'dart:ui';

import 'package:lisha_s_application1/core/utils/validation_functions.dart';
import 'package:lisha_s_application1/widgets/custom_text_form_field.dart';
import 'package:lisha_s_application1/widgets/custom_elevated_button.dart';
import 'package:lisha_s_application1/widgets/custom_outlined_button.dart';
import 'models/swift_cafe_vone_model.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'bloc/swift_cafe_vone_bloc.dart';

// ignore_for_file: must_be_immutable
class SwiftCafeVoneDialog extends StatelessWidget {
  const SwiftCafeVoneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SwiftCafeVoneBloc>(
      create: (context) => SwiftCafeVoneBloc(SwiftCafeVoneState(
        swiftCafeVoneModelObj: SwiftCafeVoneModel(),
      ))
        ..add(SwiftCafeVoneInitialEvent()),
      child: SwiftCafeVoneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Container(


        height: 750.v,
        width: 366.h,
        decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Opacity(
              opacity: 1,
                child: CustomImageView(
                imagePath: ImageConstant.rectangle8,
                height: 800.v,
                width: 386.h,
                radius: BorderRadius.circular(
                  17.h,
                ),
                alignment: Alignment.center,


            ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 57.v,
                  right: 27.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    CustomImageView(
                      margin: EdgeInsets.only(
                        top: 70.v,
                        left:15.v,
                      ),
                      imagePath: ImageConstant.imgAsset11,
                      height: 70.v,
                      width: 89.h,
                    ),
                    SizedBox(height: 1.v),
                    SizedBox(
                      width: 147.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_swift".tr,
                              style: CustomTextStyles.displayLargeffffffff,
                            ),
                            TextSpan(
                              text: "lbl_caf".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      decoration: AppDecoration.outlineOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17,
                        // backgroundBlendMode: BlendMode.srcOver,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 39,
                            spreadRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "msg_latte_but_never".tr,
                        style:
                            CustomTextStyles.bodyMediumPoppinsPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 35.v),

                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),

                      child: Column(

                        children: [
                          _buildUserName(context),

                          SizedBox(height: 20.v),
                          _buildPassword(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 68.v),
                    _buildLogin(context),
                    SizedBox(height: 39.v),
                    _buildSignup(context),
                    SizedBox(height: 28.v),
                    Text(
                      "lbl_privacy_policy".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return BlocSelector<SwiftCafeVoneBloc, SwiftCafeVoneState,
        TextEditingController?>(
      selector: (state) => state.userNameController,
      builder: (context, userNameController) {
        return CustomTextFormField(
          controller: userNameController,
          hintText: "lbl_user_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 13.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<SwiftCafeVoneBloc, SwiftCafeVoneState,
        TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 13.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.innerVoneContainerScreen);
      },
      height: 49.v,
      width: 245.h,
      text: "lbl_login".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToGrayDecoration.copyWith(
        gradient : LinearGradient(
        //     begin: Alignment(0.9996627569198608,-0.0036722258664667606),
        //     end: Alignment(0.0036722254008054733,0.0399865098297596),
            colors: [ Color.fromRGBO(76, 42, 26, 1), Color.fromRGBO(166, 115, 89, 1)]
        ),
      ),
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }

  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.innerVoneContainerScreen);
      },
      height: 49.v,
      width: 245.h,
      text: "lbl_signup".tr,
      buttonStyle: CustomButtonStyles.none,
      // decoration: CustomButtonStyles.gradientPrimaryToGrayDecoration,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }


}
