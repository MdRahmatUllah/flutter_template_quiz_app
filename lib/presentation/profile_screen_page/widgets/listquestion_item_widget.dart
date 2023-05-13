import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListquestionItemWidget extends StatelessWidget {
  ListquestionItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 10,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 32,
            width: 31,
            variant: IconButtonVariant.FillIndigo400,
            shape: IconButtonShape.RoundedBorder15,
            child: CustomImageView(
              svgPath: ImageConstant.imgQuestion,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 9,
              bottom: 6,
            ),
            child: Text(
              "Python Course",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular14.copyWith(
                letterSpacing: getHorizontalSize(
                  0.04,
                ),
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgCheckmarkGreen60001,
            height: getSize(
              13,
            ),
            width: getSize(
              13,
            ),
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
          ),
          Container(
            width: getHorizontalSize(
              93,
            ),
            margin: getMargin(
              left: 7,
              top: 2,
              bottom: 1,
            ),
            child: Text(
              "2/10\nQuestions",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium10.copyWith(
                letterSpacing: getHorizontalSize(
                  0.15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
