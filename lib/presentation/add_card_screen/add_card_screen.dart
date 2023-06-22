import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {
  TextEditingController entercardnumberOneController = TextEditingController();

  TextEditingController expirationdateOneController = TextEditingController();

  TextEditingController securitycodeOneController = TextEditingController();

  TextEditingController entercardnumberThreeController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft22(context);
                    }),
                title:
                    AppbarTitle(text: "Add Card", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Card Number",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: entercardnumberOneController,
                          hintText: "Enter Card Number",
                          margin: getMargin(top: 12),
                          textInputType: TextInputType.number),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("Expiration Date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: expirationdateOneController,
                          hintText: "Expiration Date",
                          margin: getMargin(top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Security Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: securitycodeOneController,
                          hintText: "Security Code",
                          margin: getMargin(top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Card Holder",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: entercardnumberThreeController,
                          hintText: "Enter Card Number",
                          margin: getMargin(top: 12, bottom: 5),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Add Card",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddcard(context);
                })));
  }

  onTapAddcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }
}
