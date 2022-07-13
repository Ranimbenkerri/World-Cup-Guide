import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    Key? key,
    required this.text,
    required this.image,
    required this.colors,
  }) : super(key: key);

  final String text;
  final String image;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 170,
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(image, width: double.infinity, fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: colors,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/arrow.png',
                  width: 50,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
