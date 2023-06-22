import '../notification_feed_screen/widgets/listnewproduct_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationFeedScreen extends StatelessWidget {
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
                      onTapArrowleft7(context);
                    }),
                title: AppbarTitle(text: "Feed", margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 11),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(1));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListnewproductItemWidget(onTapFeeditem: () {
                        onTapFeeditem(context);
                      });
                    }))));
  }

  onTapFeeditem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
