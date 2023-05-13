import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
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
              Spacer(),
              Text(
                "Create new password",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium20.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.03,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Please set up a new password for your account.",
                  overflow: TextOverflow.ellipsis,
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
                  top: 28,
                ),
                child: Text(
                  "New password",
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
                controller: passwordController,
                hintText: "********************",
                margin: getMargin(
                  top: 9,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Text(
                  "Confirm new password",
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
                controller: passwordoneController,
                hintText: "*********************",
                margin: getMargin(
                  top: 9,
                ),
                textInputAction: TextInputAction.done,
              ),
              CustomButton(
                height: getVerticalSize(
                  50,
                ),
                text: "Update",
                margin: getMargin(
                  top: 20,
                  bottom: 286,
                ),
                variant: ButtonVariant.Brand,
                padding: ButtonPadding.PaddingAll16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
