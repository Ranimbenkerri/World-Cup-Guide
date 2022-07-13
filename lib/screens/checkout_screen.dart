import 'package:flutter/material.dart';

import '../widget/custom_button.dart';
import '../widget/gradient_appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            GradientAppBar(
              barHeight: 150,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Text(
                        'Chockout',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'One More Step!',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const CustomLabel(text: 'Credit Card Info'),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Credit Card Number',
                      filled: true,
                      fillColor: Color(0xff242424),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7E7E7E))),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'CCV2',
                            filled: true,
                            fillColor: Color(0xff242424),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7E7E7E))),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '02/25',
                            filled: true,
                            fillColor: Color(0xff242424),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7E7E7E))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .3),
                  CustomButton(
                    text: 'Procceed Checkout',
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed('/qr');
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    isBorder: true,
                    text: 'Go Back',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
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

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70),
    );
  }
}
