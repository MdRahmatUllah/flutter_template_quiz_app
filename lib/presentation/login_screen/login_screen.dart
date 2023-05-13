import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 19,
              top: 27,
              right: 19,
              bottom: 27,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGroup12,
                  height: getVerticalSize(
                    31,
                  ),
                  width: getHorizontalSize(
                    135,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 62,
                  ),
                  child: Text(
                    "Welcome back to Syntellix",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium20.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.03,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    301,
                  ),
                  margin: getMargin(
                    left: 2,
                    top: 9,
                    right: 46,
                  ),
                  child: Text(
                    "Log in with your Google or Facebook account, or enter your account details to continue.",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.04,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Text(
                    "Email",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium14Gray800.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.01,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    50,
                  ),
                  width: getHorizontalSize(
                    350,
                  ),
                  margin: getMargin(
                    top: 10,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 12,
                            top: 18,
                            right: 12,
                            bottom: 18,
                          ),
                          decoration: AppDecoration.outlineGray400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFrame60,
                                height: getVerticalSize(
                                  14,
                                ),
                                width: getHorizontalSize(
                                  18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 46,
                            bottom: 15,
                          ),
                          child: Text(
                            "email@gmail.com",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.04,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Text(
                    "Password",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium14Gray800.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.01,
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: usernameController,
                  hintText: "usernameispassword",
                  margin: getMargin(
                    top: 10,
                  ),
                  padding: TextFormFieldPadding.PaddingT16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 14,
                      top: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLock,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      50,
                    ),
                  ),
                  isObscureText: true,
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getSize(
                          16,
                        ),
                        width: getSize(
                          16,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray300,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              3,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 1,
                        ),
                        child: Text(
                          "Remember me",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Gray800.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.04,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "Forgot Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Gray800.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    50,
                  ),
                  text: "Login",
                  margin: getMargin(
                    top: 14,
                  ),
                  variant: ButtonVariant.Brand,
                  padding: ButtonPadding.PaddingAll16,
                ),
                Padding(
                  padding: getPadding(
                    top: 40,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 6,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            135,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.blueGray100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: Text(
                          "Login with",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium14Gray700.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.01,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            141,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.blueGray100,
                            indent: getHorizontalSize(
                              13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 38,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            50,
                          ),
                          text: "Google",
                          margin: getMargin(
                            right: 3,
                          ),
                          variant: ButtonVariant.OutlineGray400,
                          padding: ButtonPadding.PaddingT16,
                          fontStyle: ButtonFontStyle.RobotoMedium14Gray800,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 18,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgGoogle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            50,
                          ),
                          text: "Facebook",
                          margin: getMargin(
                            left: 3,
                          ),
                          variant: ButtonVariant.OutlineGray400,
                          padding: ButtonPadding.PaddingT16,
                          fontStyle: ButtonFontStyle.RobotoMedium14Gray800,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 18,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFacebook,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 96,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: getHorizontalSize(
                                0.04,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
