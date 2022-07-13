import 'package:flutter/material.dart';
import '../modals/cities.dart';
import '../modals/stadiums.dart';
import '../widget/city_card.dart';
import '../widget/custom_button.dart';
import '../widget/gradient_appbar.dart';
import '../widget/stadium_card.dart';
import '../widget/ticket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const TicketCard(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Stadiums',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    CustomButton(
                      text: 'See More',
                      onPressed: () {
                        Navigator.of(context).pushNamed('/stadiums');
                      },
                      textSize: 16,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: stadiums.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          return index == 0
                              ? const SizedBox(width: 15)
                              : StadiumCard(stadium: stadiums[index - 1]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Cities',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 330,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cities.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          return index == 0
                              ? const SizedBox(width: 15)
                              : CityCard(
                                  title: cities[index - 1].name,
                                  description: cities[index - 1].desc,
                                  image: cities[index - 1].image,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/article', arguments: {
                                      'title': cities[index - 1].name,
                                      'desc': cities[index - 1].desc,
                                      'image': cities[index - 1].image,
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
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
