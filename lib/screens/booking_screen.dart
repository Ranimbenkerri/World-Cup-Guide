import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../modals/urls.dart';

import '../widget/booking_card.dart';
import '../widget/gradient_appbar.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GradientAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png', height: 50),
                Image.asset('assets/images/profile.png', height: 35),
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(
                  Uri.parse('https://www.qatarairways.com/en/homepage.html'))) {
                await launchUrl(
                    Uri.parse('https://www.qatarairways.com/en/homepage.html'),
                    mode: LaunchMode.inAppWebView);
              }
            },
            child: const BookingCard(
              text: 'Book Your Flight\nWith Qatar\nAirways',
              image: 'assets/images/planeqatar.png',
              colors: [Color(0xff731D35), Color.fromARGB(94, 115, 29, 53)],
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(hotelUrl))) {
                await launchUrl(Uri.parse(hotelUrl),
                    mode: LaunchMode.inAppWebView);
              }
            },
            child: const BookingCard(
              text: 'Get The Best\nHotel Deals',
              image: 'assets/images/hotelqatar.png',
              colors: [Color(0xff041469), Color.fromARGB(111, 31, 63, 111)],
            ),
          ),
          const Divider(
            color: Colors.white24,
            thickness: 2,
            indent: kBottomNavigationBarHeight,
            endIndent: kBottomNavigationBarHeight,
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(faqUrl))) {
                await launchUrl(Uri.parse(faqUrl),
                    mode: LaunchMode.inAppWebView);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 3,
                  color: Colors.white70,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'FAQ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text('Answers About Ticketing'),
                      ]),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/images/arrow.png',
                      width: 40,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
