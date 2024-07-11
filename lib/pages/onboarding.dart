import 'package:exe101/components/button.dart';
import 'package:exe101/pages/intro/intro_1.dart';
import 'package:exe101/pages/intro/intro_2.dart';
import 'package:exe101/pages/intro/intro_3.dart';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool _onLastPage = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Stack(children: [
      PageView(
        onPageChanged: (index) {
          setState(() {
            _onLastPage = (index == 2);
          });
        },
        controller: _controller,
        children: const [IntroPage1(), IntroPage2(), IntroPage3()],
      ),
      Container(
          alignment: const Alignment(0, 0.9),
          child: _onLastPage
              ? ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    "Get started",
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                )
              : SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotColor: Theme.of(context).primaryColor,
                      activeDotColor: Theme.of(context).primaryColor)))
    ]));
  }
}
