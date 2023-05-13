import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class QuizScreenItemWidget extends StatelessWidget {
  QuizScreenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineGray300,
      child: Row(
        children: [
          Container(
            height: getVerticalSize(
              108,
            ),
            width: getHorizontalSize(
              7,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.green60001,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 17,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanMedium16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.07,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    250,
                  ),
                  margin: getMargin(
                    top: 1,
                  ),
                  child: Text(
                    "Python was created by Guido van Rossum, and first released on February 20, 1991",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "6 min read",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium10Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 46,
            width: 46,
            margin: getMargin(
              top: 26,
              right: 10,
              bottom: 36,
            ),
            shape: IconButtonShape.CircleBorder23,
            padding: IconButtonPadding.PaddingAll13,
            child: CustomImageView(
              svgPath: ImageConstant.imgCheckmarkWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
