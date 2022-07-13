import 'package:flutter/material.dart';

import '../modals/stadiums.dart';
import '../widget/gradient_appbar.dart';

class StadiumScreen extends StatelessWidget {
  const StadiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stadium = ModalRoute.of(context)?.settings.arguments as Stadium;
    return Scaffold(
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
                  Expanded(
                    child: Text(
                      stadium.title,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(stadium.image,
                  height: 250, width: double.infinity, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              stadium.desc,
              style: const TextStyle(
                  color: Color.fromARGB(202, 255, 255, 255),
                  fontSize: 15,
                  height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
