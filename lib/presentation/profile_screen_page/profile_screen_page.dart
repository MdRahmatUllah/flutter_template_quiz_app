import '../profile_screen_page/widgets/listone_item_widget.dart';
import '../profile_screen_page/widgets/listquestion_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';

class ProfileScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(67),
            leadingWidth: 35.5,
            leading: Container(
                height: getVerticalSize(18.89),
                width: getHorizontalSize(16.5),
                margin: getMargin(left: 19, top: 15, bottom: 21),
                child: Stack(alignment: Alignment.center, children: [
                  AppbarImage(
                      height: getVerticalSize(12),
                      width: getHorizontalSize(16),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(bottom: 6),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  AppbarImage(
                      height: getVerticalSize(13),
                      width: getHorizontalSize(10),
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(top: 5, right: 6),
                      onTap: () {
                        onTapArrowleftone(context);
                      })
                ])),
            centerTitle: true,
            title: AppbarTitle(text: "My Profile"),
            actions: [
              AppbarImage(
                  height: getSize(18),
                  width: getSize(18),
                  svgPath: ImageConstant.imgSettings,
                  margin: getMargin(left: 21, top: 15, right: 21, bottom: 22))
            ]),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 6),
            child: Padding(
              padding: getPadding(left: 16, right: 16, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: getPadding(top: 26, bottom: 26),
                      decoration: AppDecoration.outlineBlack9001e1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse49,
                                height: getSize(94),
                                width: getSize(94),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(47)),
                                margin: getMargin(bottom: 3)),
                            Padding(
                                padding: getPadding(bottom: 19),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Jared Dunn",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium20
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.03))),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(
                                                    left: 100,
                                                    top: 1,
                                                    bottom: 4))
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Working at",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.04)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, bottom: 1),
                                                child: Text("Amicsoft",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium14Lightblue500
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.01))))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("Silicon Valley, USA",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.04))))
                                    ]))
                          ])),
                  Padding(
                    padding: getPadding(top: 29),
                    child: Text(
                      "My Ranking",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium20.copyWith(
                        letterSpacing: getHorizontalSize(0.03),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 1, top: 16, right: 4),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(5),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListoneItemWidget();
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(top: 33),
                    child: Text(
                      "My Courses",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium20.copyWith(
                        letterSpacing: getHorizontalSize(0.03),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 3, top: 16, right: 2),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(11),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListquestionItemWidget();
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

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
