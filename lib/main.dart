import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/presentation/login_screen/login_screen.dart';
import 'package:myapp/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:myapp/presentation/register_form_screen/register_form_screen.dart';
import 'package:myapp/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'firebaseproject',
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
      routes: AppRoutes.routes,
    );
  }
}

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          if (snapshot.hasData) {
            // El usuario está autenticado, redirigir a la pantalla principal
            print(snapshot.data?.email.toString());
            return PaymentMethodScreen();
          } else {
            // El usuario no está autenticado, mostrar la pantalla de inicio de sesión
            return LoginWidget();
          }
        }
      },
    );
  }
}
