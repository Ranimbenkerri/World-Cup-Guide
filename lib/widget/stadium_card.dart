import 'package:flutter/material.dart';

import '../modals/stadiums.dart';

class StadiumCard extends StatelessWidget {
  const StadiumCard({Key? key, required this.stadium}) : super(key: key);

  final Stadium stadium;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/stadium', arguments: stadium);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: 160,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                stadium.image,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.black,
                      Colors.black12,
                    ])),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                child: Text(
                  stadium.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
