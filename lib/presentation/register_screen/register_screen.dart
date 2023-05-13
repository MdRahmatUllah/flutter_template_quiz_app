import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController emailoneController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  TextEditingController usernameoneController = TextEditingController();

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
              top: 12,
              right: 19,
              bottom: 12,
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
                    top: 39,
                  ),
                  child: Text(
                    "Create your syntellix account",
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
                    311,
                  ),
                  margin: getMargin(
                    top: 8,
                    right: 38,
                  ),
                  child: Text(
                    "Please provide the following information to create your new account.",
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
                    top: 20,
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
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: emailoneController,
                  hintText: "email@gmail.com",
                  margin: getMargin(
                    top: 10,
                  ),
                  padding: TextFormFieldPadding.PaddingT16,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 11,
                      top: 18,
                      right: 10,
                      bottom: 18,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrame60,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      50,
                    ),
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
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 12,
                      top: 15,
                      right: 12,
                      bottom: 17,
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
                    top: 26,
                  ),
                  child: Text(
                    "Confirm password",
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
                  controller: usernameoneController,
                  hintText: "usernameispassword",
                  margin: getMargin(
                    top: 9,
                  ),
                  padding: TextFormFieldPadding.PaddingT16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 12,
                      top: 16,
                      right: 12,
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
                CustomButton(
                  height: getVerticalSize(
                    50,
                  ),
                  text: "Register",
                  margin: getMargin(
                    top: 16,
                  ),
                  variant: ButtonVariant.Brand,
                  padding: ButtonPadding.PaddingAll16,
                ),
                Padding(
                  padding: getPadding(
                    top: 36,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 7,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            107,
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
                      Text(
                        "Or continue With",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium14Gray700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.01,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 7,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            105,
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
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 37,
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
                      top: 79,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
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
                            text: "Login",
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
