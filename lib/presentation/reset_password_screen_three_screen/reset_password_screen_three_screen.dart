import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';

class ResetPasswordScreenThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 27,
            right: 20,
            bottom: 27,
          ),
          child: Column(
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
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 152,
                ),
                color: ColorConstant.green50,
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
                    top: 54,
                    right: 51,
                    bottom: 54,
                  ),
                  decoration: AppDecoration.fillGreen50.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder89,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: getVerticalSize(
                          70,
                        ),
                        width: getHorizontalSize(
                          75,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                ),
                child: Text(
                  "Password reset Successful",
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
                  249,
                ),
                margin: getMargin(
                  left: 50,
                  top: 6,
                  right: 50,
                ),
                child: Text(
                  "You can now login back to your account using your new password.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoRegular14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.04,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                height: getVerticalSize(
                  50,
                ),
                text: "Login to your account",
                margin: getMargin(
                  bottom: 69,
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
