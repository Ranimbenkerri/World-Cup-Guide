import 'package:flutter/material.dart';

import 'custom_button.dart';

class CityCard extends StatelessWidget {
  const CityCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.onPressed,
    this.isPurple = false,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  final VoidCallback onPressed;
  final bool isPurple;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 320,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff272B34),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 14,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Spacer(),
              CustomButton(
                text: 'Read More',
                textSize: 18,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                onPressed: onPressed,
                color: isPurple ? const Color(0xffA41652) : Colors.white,
                textColor: isPurple ? Colors.white : Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
