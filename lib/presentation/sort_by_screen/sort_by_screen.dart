import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SortByScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                title:
                    AppbarTitle(text: "Sort By", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Best Match",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtTimeendingsooneOne(context);
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  padding: getPadding(
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillBlue50,
                                  child: Text("Time: ending soonest",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold12Indigo900
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
                              child: Text("Time: newly listed",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Price + Shipping: lowest first",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Price + Shipping: highest first",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("Distance: nearest first",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))))
                    ]))));
  }

  onTapTxtTimeendingsooneOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
