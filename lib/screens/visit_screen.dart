import 'package:flutter/material.dart';

import '../modals/attractions.dart';
import '../widget/city_card.dart';
import '../widget/gradient_appbar.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            GradientAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', height: 50),
                  Image.asset('assets/images/profile.png', height: 35),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Best Tourist Attractions To Visit',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 360,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: attractions.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        return index == 0
                            ? const SizedBox(width: 15)
                            : CityCard(
                                title: attractions[index - 1].title,
                                description: attractions[index - 1].desc,
                                image: attractions[index - 1].image,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/article', arguments: {
                                    'title': attractions[index - 1].title,
                                    'desc': attractions[index - 1].desc,
                                    'image': attractions[index - 1].image,
                                  });
                                },
                                isPurple: true,
                              );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Most Visited Cities',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 360,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: attractions.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        return index == 0
                            ? const SizedBox(width: 15)
                            : CityCard(
                                title: attractions[index - 1].title,
                                description: attractions[index - 1].desc,
                                image: attractions[index - 1].image,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/article', arguments: {
                                    'title': attractions[index - 1].title,
                                    'desc': attractions[index - 1].desc,
                                    'image': attractions[index - 1].image,
                                  });
                                },
                                isPurple: true,
                              );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
