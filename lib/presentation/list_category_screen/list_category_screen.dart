import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: () {
                      onTapArrowleft9(context);
                    }),
                title:
                    AppbarTitle(text: "Category", margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 25, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftLightBlueA200,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 2, bottom: 3),
                                            child: Text("Shirt",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtPoppinsBold12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillBlue50,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 2, bottom: 3),
                                            child: Text("Bikini",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Dress",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMail70x70,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 3, bottom: 2),
                                        child: Text("Work Equipment",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrash70x70,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Man Pants",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapManshoes(context);
                                  },
                                  child: Container(
                                      width: double.maxFinite,
                                      padding: getPadding(all: 16),
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgTicket,
                                                height: getSize(24),
                                                width: getSize(24)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 2,
                                                    bottom: 3),
                                                child: Text("Man Shoes",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgForward,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 2, bottom: 3),
                                            child: Text("Man Underwear",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgAirplane,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 2, bottom: 3),
                                            child: Text("Man T-Shirt",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 4, bottom: 1),
                                        child: Text("Woman Bag",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgWomanpantsicon,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Woman Pants",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgHighheelsicon,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 3, bottom: 2),
                                        child: Text("High Heels",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))
                            ]))))));
  }

  onTapManshoes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}
