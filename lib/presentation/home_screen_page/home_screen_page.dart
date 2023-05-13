import '../home_screen_page/widgets/home_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  TextEditingController group243Controller = TextEditingController();

  TextEditingController group253Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        // appBar: CustomAppBar(
        //   height: getVerticalSize(
        //     58,
        //   ),
        //   title: AppbarImage(
        //     height: getVerticalSize(
        //       25,
        //     ),
        //     width: getHorizontalSize(
        //       109,
        //     ),
        //     svgPath: ImageConstant.imgGroup12,
        //     margin: getMargin(
        //       left: 19,
        //     ),
        //   ),
        //   actions: [
        //     AppbarImage(
        //       height: getVerticalSize(
        //         19,
        //       ),
        //       width: getHorizontalSize(
        //         23,
        //       ),
        //       svgPath: ImageConstant.imgQrcode,
        //       margin: getMargin(
        //         left: 18,
        //         top: 11,
        //         right: 18,
        //         bottom: 25,
        //       ),
        //     ),
        //   ],
        // ),

        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 28,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Category",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "View all",
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 3,
                      top: 13,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            width: getHorizontalSize(
                              156,
                            ),
                            focusNode: FocusNode(),
                            controller: group243Controller,
                            variant: TextFormFieldVariant.White,
                            suffix: Container(
                              padding: getPadding(
                                left: 30,
                                top: 22,
                                right: 54,
                                bottom: 22,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.indigo400,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      4,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      4,
                                    ),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.indigo400,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignOutside,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgComputer,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                161,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: AppDecoration.outlineBlack9001e
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.indigo400,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.indigo400,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL4,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              93,
                                            ),
                                            width: getHorizontalSize(
                                              156,
                                            ),
                                            padding: getPadding(
                                              left: 54,
                                              top: 22,
                                              right: 54,
                                              bottom: 22,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL4,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgComputer,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    47,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Python Mastery",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.07,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "120 Quizes",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 3,
                                              bottom: 7,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Start Learning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.05,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(
                                                    9,
                                                  ),
                                                  width: getHorizontalSize(
                                                    12,
                                                  ),
                                                  margin: getMargin(
                                                    left: 49,
                                                    bottom: 5,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 11,
                                    ),
                                    decoration: AppDecoration.outlineBlack9001e
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.indigo400,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.indigo400,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL4,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              93,
                                            ),
                                            width: getHorizontalSize(
                                              156,
                                            ),
                                            padding: getPadding(
                                              left: 54,
                                              top: 22,
                                              right: 54,
                                              bottom: 22,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL4,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgComputer,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    47,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Python Mastery",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.07,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "120 Quizes",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 3,
                                              bottom: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Start Learning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.05,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(
                                                    9,
                                                  ),
                                                  width: getHorizontalSize(
                                                    12,
                                                  ),
                                                  margin: getMargin(
                                                    left: 48,
                                                    bottom: 4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 51,
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Category",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "View all",
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 3,
                      top: 13,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            width: getHorizontalSize(
                              156,
                            ),
                            focusNode: FocusNode(),
                            controller: group253Controller,
                            variant: TextFormFieldVariant.White,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              padding: getPadding(
                                left: 30,
                                top: 22,
                                right: 54,
                                bottom: 22,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.indigo400,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      4,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      4,
                                    ),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.indigo400,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignOutside,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgComputer,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                161,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: AppDecoration.outlineBlack9001e
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.indigo400,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.indigo400,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL4,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              93,
                                            ),
                                            width: getHorizontalSize(
                                              156,
                                            ),
                                            padding: getPadding(
                                              left: 54,
                                              top: 22,
                                              right: 54,
                                              bottom: 22,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL4,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgComputer,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    47,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Python Mastery",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.07,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "120 Quizes",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 3,
                                              bottom: 7,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Start Learning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.05,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(
                                                    9,
                                                  ),
                                                  width: getHorizontalSize(
                                                    12,
                                                  ),
                                                  margin: getMargin(
                                                    left: 49,
                                                    bottom: 5,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 11,
                                    ),
                                    decoration: AppDecoration.outlineBlack9001e
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.indigo400,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.indigo400,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL4,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              93,
                                            ),
                                            width: getHorizontalSize(
                                              156,
                                            ),
                                            padding: getPadding(
                                              left: 54,
                                              top: 22,
                                              right: 54,
                                              bottom: 22,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL4,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgComputer,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    47,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 8,
                                          ),
                                          child: Text(
                                            "Python Mastery",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.07,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "120 Quizes",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 3,
                                              bottom: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Start Learning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular12Black900
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.05,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(
                                                    9,
                                                  ),
                                                  width: getHorizontalSize(
                                                    12,
                                                  ),
                                                  margin: getMargin(
                                                    left: 48,
                                                    bottom: 4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      176,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        left: 2,
                        top: 15,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            11,
                          ),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return HomeScreenItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
