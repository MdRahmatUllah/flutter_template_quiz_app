import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigo900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 19,
            top: 26,
            right: 19,
            bottom: 26,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup12WhiteA700,
                height: getVerticalSize(
                  31,
                ),
                width: getHorizontalSize(
                  135,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup12Indigo500,
                height: getVerticalSize(
                  172,
                ),
                width: getHorizontalSize(
                  303,
                ),
                margin: getMargin(
                  top: 128,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  308,
                ),
                margin: getMargin(
                  left: 20,
                  top: 71,
                  right: 21,
                ),
                child: Text(
                  "Boost your coding skills on-the-go with our versatile platform for creating, sharing, and playing challenges.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoRegular16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.07,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: getMargin(
                  bottom: 82,
                ),
                padding: getPadding(
                  left: 36,
                  top: 16,
                  right: 36,
                  bottom: 16,
                ),
                decoration: AppDecoration.brand.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Get started",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.01,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightWhiteA700,
                      height: getVerticalSize(
                        12,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                      margin: getMargin(
                        left: 86,
                        top: 2,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
