import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'home_page.dart';
import 'service_selection_page.dart';
import 'regular_order_page.dart';
import 'express_order_page.dart';
import 'iron_regular_order_page.dart';
import 'iron_express_order_page.dart';
import 'laundry_basket_page.dart';
import 'profile_page.dart';
import 'qr_code_page.dart';

void main() {
  runApp(const LaundryApp());
}

class LaundryApp extends StatelessWidget {
  const LaundryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.grey[200],
        fontFamily: 'Roboto',
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/service-selection': (context) => const ServiceSelectionPage(),
        '/regular-order': (context) => const RegularOrderPage(),
        '/express-order': (context) => const ExpressOrderPage(),
        '/iron-regular-order': (context) => const IronRegularOrderPage(),
        '/iron-express-order': (context) => const IronExpressOrderPage(),
        '/laundry-basket': (context) => const LaundryBasketPage(),
        '/profile': (context) => const ProfilePage(),
        '/qr-code': (context) => const QRCodePage(),
      },
    );
  }
}