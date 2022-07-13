import 'package:flutter/material.dart';

import '../widget/custom_button.dart';
import '../widget/gradient_appbar.dart';

class BuyTicketScreen extends StatelessWidget {
  const BuyTicketScreen({Key? key}) : super(key: key);

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
                        'Buy Ticket',
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
                    'Please Fill The Form',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const CustomLabel(text: 'Full Name'),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Jhone.D',
                      filled: true,
                      fillColor: Color(0xff242424),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7E7E7E))),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const CustomLabel(text: 'Email Adress'),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'jhoned@email.com',
                      filled: true,
                      fillColor: Color(0xff242424),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7E7E7E))),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .3),
                  CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/checkout');
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
