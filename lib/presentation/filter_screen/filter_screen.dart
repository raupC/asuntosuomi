import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FilterScreen extends StatelessWidget {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgClose23x24,
                    margin: getMargin(left: 18),
                    onTap: () {
                      onTapClose(context);
                    }),
                title: AppbarTitle(
                    text: "Filter Search", margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 47, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Price Range",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: priceController,
                                                hintText: "1.245",
                                                margin: getMargin(right: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingT17_1,
                                                fontStyle: TextFormFieldFontStyle
                                                    .PoppinsBold12Bluegray300)),
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: priceOneController,
                                                hintText: "9.344",
                                                margin: getMargin(left: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingT17_1,
                                                fontStyle: TextFormFieldFontStyle
                                                    .PoppinsBold12Bluegray300,
                                                textInputAction:
                                                    TextInputAction.done))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Condition",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13, right: 82),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtOutlineBlue501
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("New",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(65),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("Used",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(120),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("Not Specified",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Buying Format",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          5,
                                          (index) =>
                                              BuyingformateItemWidget()))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Item Location",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          4,
                                          (index) =>
                                              ItemlocationItemWidget()))),
                              Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("Show Only",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          11, (index) => ShowonlyItemWidget())))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Apply",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapApply(context);
                })));
  }

  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }

  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
