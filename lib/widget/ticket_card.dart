import 'package:flutter/material.dart';

import 'custom_button.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xff900640),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Qatar22\nTickets Are\nNow Available!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Buy a Ticket',
                color: Colors.white,
                textColor: Colors.black87,
                textSize: 18,
                onPressed: () {
                  Navigator.of(context).pushNamed('/buy-ticket');
                },
              )
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Image.asset(
              'assets/images/tickets.png',
            ),
          )
        ],
      ),
    );
  }
}
