import 'package:flutter/material.dart';

import 'screens/article_launcher.dart';
import 'screens/booking_screen.dart';
import 'screens/buy_ticket_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/navbar.dart';
import 'screens/onboarding_screen.dart';
import 'screens/qr_screen.dart';
import 'screens/stadium_screen.dart';
import 'screens/stadiums_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Onboarding Example';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          fontFamily: 'Qatar',
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: const Color(0xff16191F),
        ),
        home: const OnboardingScreen(),
        routes: {
          '/home': (context) => const NavBar(),
          '/stadium': (context) => const StadiumScreen(),
          '/stadiums': (context) => const StadiumsScreen(),
          '/booking': (context) => const BookingScreen(),
          '/buy-ticket': (context) => const BuyTicketScreen(),
          '/checkout': (context) => const CheckoutScreen(),
          '/qr': (context) => const QrScreen(),
          '/article': (context) => const ArticleLauncher(),
        },
      );
}
