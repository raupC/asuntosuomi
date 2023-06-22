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

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  TextEditingController oldpasswordController = TextEditingController();

  TextEditingController oldpasswordOneController = TextEditingController();

  TextEditingController oldpasswordTwoController = TextEditingController();

  TextEditingController oldpasswordThreeController = TextEditingController();

  TextEditingController oldpasswordFourController = TextEditingController();

  TextEditingController oldpasswordFiveController = TextEditingController();

  TextEditingController oldpasswordSixController = TextEditingController();

  TextEditingController oldpasswordSevenController = TextEditingController();

  TextEditingController oldpasswordEightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft18(context);
                    }),
                title: AppbarTitle(
                    text: "Add Address", margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 45, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Country or region",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordController,
                                  hintText: "Enter the country or region",
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("First Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordOneController,
                                  hintText: "Enter the first name",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Last Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordTwoController,
                                  hintText: "Enter the last name",
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Street Address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordThreeController,
                                  hintText: "Enter the street address",
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Street Address 2 (Optional)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordFourController,
                                  hintText: "Enter the street address 2",
                                  margin: getMargin(top: 16),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("City",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordFiveController,
                                  hintText: "Enter the city",
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("State/Province/Region",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordSixController,
                                  hintText: "Enter the state/province/region",
                                  margin: getMargin(top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Zip Code",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordSevenController,
                                  hintText: "Enter the zip code",
                                  margin: getMargin(top: 11),
                                  variant: TextFormFieldVariant.OutlineBlue50_1,
                                  textInputType: TextInputType.number),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Phone Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: oldpasswordEightController,
                                  hintText: "Enter the phone number",
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.phone)
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Add Address",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  onTapAddaddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}
