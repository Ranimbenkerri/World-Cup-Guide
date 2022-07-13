import 'package:flutter/material.dart';

import '../widget/custom_button.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/bg.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(height: 25),
                const Center(
                  child: Text(
                    'Your Ticket is READY !!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/qr.png',
                  height: 500,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      isBorder: true,
                      isIcon: true,
                      icon: const Icon(Icons.home, size: 18),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      text: 'Home',
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: CustomButton(
                        textSize: 18,
                        isIcon: true,
                        icon: Image.asset(
                          'assets/images/pdf.png',
                          height: 30,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        text: 'Save as PDF',
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actionsPadding: const EdgeInsets.all(2),
                                title: const Icon(
                                  Icons.check_circle,
                                  color: Colors.greenAccent,
                                  size: 35,
                                ),
                                content: const Text('File Saved Successfully!'),
                                actions: [
                                  CustomButton(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      text: 'Close'),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
