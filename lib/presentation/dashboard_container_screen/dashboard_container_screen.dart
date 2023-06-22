import 'package:myapp/core/app_export.dart';
import 'package:myapp/presentation/account_page/account_page.dart';
import 'package:myapp/presentation/cart_page/cart_page.dart';
import 'package:myapp/presentation/dashboard_page/dashboard_page.dart';
import 'package:myapp/presentation/explore_page/explore_page.dart';
import 'package:myapp/presentation/offer_screen_one_page/offer_screen_one_page.dart';
import 'package:myapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Offer:
        return AppRoutes.offerScreenOnePage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.offerScreenOnePage:
        return OfferScreenOnePage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
