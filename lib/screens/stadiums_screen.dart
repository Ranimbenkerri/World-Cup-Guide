import 'package:flutter/material.dart';

import '../modals/stadiums.dart';
import '../widget/city_card.dart';
import '../widget/gradient_appbar.dart';

class StadiumsScreen extends StatelessWidget {
  const StadiumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: stadiums.length + 1,
              itemBuilder: (BuildContext context, int index) {
                return index == 0
                    ? GradientAppBar(
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
                              const Text(
                                'Stadiums',
                                style: TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      )
                    : CityCard(
                        title: stadiums[index - 1].title,
                        image: stadiums[index - 1].image,
                        description: stadiums[index - 1].desc,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/stadium',
                              arguments: stadiums[index - 1]);
                        },
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
