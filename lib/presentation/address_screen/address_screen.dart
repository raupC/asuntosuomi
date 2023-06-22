import '../address_screen/widgets/address_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft19(context);
                    }),
                title:
                    AppbarTitle(text: "Address", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 10, right: 16),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(18));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return AddressItemWidget();
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Add Address",
                margin: getMargin(left: 16, right: 16, bottom: 3),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  onTapAddaddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAddressScreen);
  }

  onTapArrowleft19(BuildContext context) {
    Navigator.pop(context);
  }
}
