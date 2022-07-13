import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final Widget child;
  final double barHeight;

  const GradientAppBar({
    Key? key,
    required this.child,
    this.barHeight = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        padding: EdgeInsets.only(top: statusbarHeight),
        height: statusbarHeight + barHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff871F3A), Colors.transparent]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ));
  }
}
