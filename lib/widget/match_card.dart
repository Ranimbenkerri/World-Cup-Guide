import 'package:flutter/material.dart';

import '../modals/matches.dart' as mt;

class MatchCard extends StatelessWidget {
  const MatchCard({Key? key, required this.match}) : super(key: key);

  final mt.Match match;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffA41652),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                match.stade,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Text(
              match.date,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'First Round of Group Stage',
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCountry(match.team1image, match.team1name),
            const Text(
              'Vs.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            buildCountry(match.team2image, match.team2name),
          ],
        )
      ]),
    );
  }

  Column buildCountry(String teamimage, String teamname) {
    return Column(
      children: [
        Image.asset(
          teamimage,
          width: 80,
        ),
        Text(
          teamname,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
