import 'package:flutter/material.dart';

import '../modals/onboarding_data.dart';
import '../widget/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

void openGoogle(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 200),
          title: Row(
            children: [
              Image.asset(
                'assets/images/google.png',
                width: 20,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(width: 10),
              const Text('Sign in with Google'),
              const Divider(),
            ],
          ),
          content: Column(
            children: [
              const Text(
                'Choose your account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('to continue to our app'),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (() {
                  Navigator.of(context).pushReplacementNamed('/home');
                }),
                child: Row(
                  children: [
                    CircleAvatar(
                        child: Image.asset('assets/images/profile.png',
                            width: 20, fit: BoxFit.fitWidth)),
                    const SizedBox(width: 8),
                    const Text('User@gmail.com'),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color.fromARGB(255, 253, 250, 250),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          onPageChanged: (value) => setState(() => _currentPage = value),
          itemCount: contents.length,
          itemBuilder: (context, i) {
            return Stack(
              children: [
                Image.asset(
                  contents[i].image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Color.fromARGB(197, 0, 0, 0),
                          Colors.transparent
                        ]),
                  ),
                ),
                Column(
                  children: [
                    const Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contents[i].title,
                              style: const TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 30),
                            buildDots(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: _currentPage + 1 == contents.length
                                  ? Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomButton(
                                          textSize: 20,
                                          isIcon: true,
                                          icon: Image.asset(
                                              'assets/images/google.png',
                                              height: 25),
                                          text: 'Sign in With Google',
                                          onPressed: () {
                                            openGoogle(context);
                                          },
                                        ),
                                        const SizedBox(height: 15),
                                        CustomButton(
                                          isBorder: true,
                                          text: 'Continue as Guest',
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacementNamed('/home');
                                          },
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        const Spacer(),
                                        buildNextSkip(),
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Row buildNextSkip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          isBorder: true,
          text: 'Skip',
          onPressed: () {
            _controller.jumpToPage(2);
          },
        ),
        CustomButton(
            onPressed: () {
              _controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            text: 'Next'),
      ],
    );
  }

  Row buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        contents.length,
        (int index) => _buildDots(index: index),
      ),
    );
  }
}
