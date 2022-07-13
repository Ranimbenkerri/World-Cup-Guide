import 'package:flutter/material.dart';

import '../modals/matches.dart';
import '../widget/gradient_appbar.dart';
import '../widget/match_card.dart';

class PlanningScreen extends StatelessWidget {
  const PlanningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: matches.length,
            itemBuilder: (BuildContext context, int index) {
              return index == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientAppBar(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/logo.png', height: 50),
                              Image.asset('assets/images/profile.png',
                                  height: 35),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Planning for all\nMatches in One \nPlace ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    )
                  : MatchCard(match: matches[index - 1]);
            },
          ),
        )
      ]),
    );
  }
}
