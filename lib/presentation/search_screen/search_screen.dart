import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: CustomSearchView(
                    width: getHorizontalSize(291),
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "Nike Air Max",
                    margin: getMargin(left: 16),
                    variant: SearchViewVariant.OutlineLightblueA200,
                    padding: SearchViewPadding.PaddingT12,
                    fontStyle: SearchViewFontStyle.PoppinsBold12Indigo90087,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 12, right: 8, bottom: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(44)),
                    suffix: Container(
                        margin:
                            getMargin(left: 30, top: 12, right: 16, bottom: 12),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgClose20x20)),
                    suffixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(44))),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgUpload24x24,
                      margin: getMargin(all: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.blue50,
                          indent: getHorizontalSize(6)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLanguage(context);
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  margin: getMargin(top: 9),
                                  padding: getPadding(
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("Nike Air Max 270 React ENG ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSearchresult(context);
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  padding: getPadding(
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("Nike Air Vapormax 360",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Nike Air Max 270 React ENG ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Nike Air Max 270 React",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Nike Air VaporMax Flyknit 3",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Nike Air Max 97 Utility",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))))
                    ]))));
  }

  onTapTxtLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }

  onTapTxtSearchresult(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}
