import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChallengesItemWidget extends StatelessWidget {
  ChallengesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 7,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineBlack90014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.indigo400,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.indigo50,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Container(
              height: getVerticalSize(
                100,
              ),
              width: getHorizontalSize(
                97,
              ),
              padding: getPadding(
                left: 31,
                top: 32,
                right: 31,
                bottom: 32,
              ),
              decoration: AppDecoration.outlineIndigo50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgQuestion,
                    height: getVerticalSize(
                      33,
                    ),
                    width: getHorizontalSize(
                      34,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Python",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanMedium16.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.07,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTicket,
                      height: getVerticalSize(
                        8,
                      ),
                      width: getHorizontalSize(
                        58,
                      ),
                      margin: getMargin(
                        left: 104,
                        top: 4,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgBookmark,
                        height: getVerticalSize(
                          11,
                        ),
                        width: getHorizontalSize(
                          10,
                        ),
                        margin: getMargin(
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                        ),
                        child: Text(
                          "10 Quizes",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.05,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getVerticalSize(
                          11,
                        ),
                        width: getHorizontalSize(
                          13,
                        ),
                        margin: getMargin(
                          left: 18,
                          top: 1,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                        ),
                        child: Text(
                          "Completed By 1.4k",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.05,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    24,
                  ),
                  width: getHorizontalSize(
                    83,
                  ),
                  text: "Enroll",
                  margin: getMargin(
                    top: 25,
                  ),
                  shape: ButtonShape.RoundedBorder2,
                  fontStyle: ButtonFontStyle.RobotoRegular12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
