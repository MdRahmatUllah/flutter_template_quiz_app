import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';

class ResetPasswordScreenOneScreen extends StatelessWidget {
  TextEditingController emailoneController = TextEditingController();

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
              left: 20,
              top: 27,
              right: 20,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      top: 58,
                      right: 75,
                    ),
                    color: ColorConstant.blue50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder89,
                    ),
                    child: Container(
                      height: getSize(
                        178,
                      ),
                      width: getSize(
                        178,
                      ),
                      padding: getPadding(
                        left: 51,
                        top: 35,
                        right: 51,
                        bottom: 35,
                      ),
                      decoration: AppDecoration.fillBlue50.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder89,
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLockIndigo900,
                            height: getVerticalSize(
                              98,
                            ),
                            width: getHorizontalSize(
                              75,
                            ),
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 56,
                  ),
                  child: Text(
                    "Reset Password",
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
                    285,
                  ),
                  margin: getMargin(
                    top: 11,
                    right: 64,
                  ),
                  child: Text(
                    "Please enter your email to get password reset instructions.",
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
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
                CustomButton(
                  height: getVerticalSize(
                    50,
                  ),
                  text: "Get Code",
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                  variant: ButtonVariant.Brand,
                  padding: ButtonPadding.PaddingAll16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
