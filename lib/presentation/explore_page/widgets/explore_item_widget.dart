import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 70,
          width: 70,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowleftLightBlueA20070x70,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 7,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular10.copyWith(
              letterSpacing: getHorizontalSize(
                0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
