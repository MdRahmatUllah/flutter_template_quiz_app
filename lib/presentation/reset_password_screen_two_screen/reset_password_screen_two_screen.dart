import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';

class ResetPasswordScreenTwoScreen extends StatelessWidget {
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
                      top: 59,
                      right: 51,
                      bottom: 59,
                    ),
                    decoration: AppDecoration.fillBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder89,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMail,
                          height: getVerticalSize(
                            59,
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
              ),
              Padding(
                padding: getPadding(
                  top: 58,
                ),
                child: Text(
                  "Confirm security code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium20.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.03,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Please enter the code sent to your email.",
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
                  top: 19,
                ),
                child: Text(
                  "Code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14Gray800.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.01,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  autoDismissKeyboard: true,
                  enableActiveFill: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    fieldHeight: getHorizontalSize(
                      50,
                    ),
                    fieldWidth: getHorizontalSize(
                      50,
                    ),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    selectedFillColor: ColorConstant.fromHex("#1212121D"),
                    activeFillColor: ColorConstant.fromHex("#1212121D"),
                    inactiveFillColor: ColorConstant.fromHex("#1212121D"),
                    inactiveColor: ColorConstant.gray400,
                    selectedColor: ColorConstant.gray400,
                    activeColor: ColorConstant.gray400,
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  50,
                ),
                text: "Verify Code",
                margin: getMargin(
                  top: 21,
                  bottom: 5,
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
