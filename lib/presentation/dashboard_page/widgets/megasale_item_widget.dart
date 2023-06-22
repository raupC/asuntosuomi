import 'package:myapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MegasaleItemWidget extends StatelessWidget {
  MegasaleItemWidget({this.onTapMegaSaleProduct});

  VoidCallback? onTapMegaSaleProduct;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapMegaSaleProduct?.call();
          },
          child: Container(
            margin: getMargin(
              right: 16,
            ),
            padding: getPadding(
              all: 16,
            ),
            decoration: AppDecoration.outlineBlue501.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProductimage109x1094,
                  height: getSize(
                    109,
                  ),
                  width: getSize(
                    109,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      5,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    105,
                  ),
                  margin: getMargin(
                    top: 7,
                  ),
                  child: Text(
                    "MS - Nike Air Max 270 React...",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "299,43",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "534,33",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Text(
                          "24% Off",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold10.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
