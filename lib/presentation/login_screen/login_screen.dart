import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/main.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_icon_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class LoginWidget extends StatefulWidget {
  @override
  LoginScreen createState() => LoginScreen();
}

class LoginScreen extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 68, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        height: 150,
                        width: 150,
                        image: AssetImage(
                            'assets/1685919120310__1_-removebg-preview.png'),
                      ),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Bienvenido a Suomi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Inicie sesión para continuar",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 28),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Contraseña",
                          margin: getMargin(top: 10),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: true),
                      ElevatedButton(
                        child: Text('Iniciar sesión'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: signIn,
                      ),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 10, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(134),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50))),
                                Text("OR",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.07))),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50)))
                              ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 7, top: 16, right: 7, bottom: 16),
                          decoration: AppDecoration.outlineBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 72, top: 2, bottom: 1),
                                child: Text("Login with Google",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing: getHorizontalSize(0.5))))
                          ])),
                      Container(
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 7, top: 16, right: 7, bottom: 16),
                          decoration: AppDecoration.outlineBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFacebook,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 64, top: 2, bottom: 1),
                                child: Text("Login with facebook",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing: getHorizontalSize(0.5))))
                          ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("¿Se le olvido la contraseña?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveana(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 7, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account?",
                                        style: TextStyle(
                                            color: ColorConstant.blueGray300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: "Register",
                                        style: TextStyle(
                                            color: ColorConstant.lightBlueA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapTxtDonthaveana(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerFormScreen);
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
    }
  }
}
