import 'package:myapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShipToItemWidget extends StatelessWidget {
  ShipToItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 22,
          right: 24,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineLightblueA200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Priscekila",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                264,
              ),
              margin: getMargin(
                top: 19,
                right: 30,
              ),
              child: Text(
                "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Text(
                "+99 1234567890",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
                bottom: 3,
              ),
              child: Row(
                children: [
                  Text(
                    "Edit",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 32,
                    ),
                    child: Text(
                      "Delete",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Pink300.copyWith(
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
    );
  }
}
