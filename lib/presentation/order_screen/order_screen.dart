import '../order_screen/widgets/order_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
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
                      onTapArrowleft16(context);
                    }),
                title: AppbarTitle(text: "Order", margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 15, top: 19, right: 16),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(10));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return OrderItemWidget(onTapOrder: () {
                        onTapOrder(context);
                      });
                    }))));
  }

  onTapOrder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderDetailsScreen);
  }

  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }
}
