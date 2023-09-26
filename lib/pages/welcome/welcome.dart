import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ulearning/pages/welcome/widgets.dart';

import 'notifier/welcome_notifier.dart';


class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              margin: const EdgeInsets.only(top: 30),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    onPageChanged: (value) {
                      ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      appOnBoardingPage(_controller,
                          imagePath: "assets/images/reading.png",
                          title: "First See Learning",
                          subTitle:
                              "Forget about of paper all knowledge in one learning",
                          index: 1, context:context),
                      appOnBoardingPage(_controller,
                          imagePath: "assets/images/man.png",
                          title: "Connect With Everyone",
                          subTitle:
                              "Always keep in touch with your tutor and friends. Let's get connected",
                          index: 2, context:context),
                      appOnBoardingPage(_controller,
                          imagePath: "assets/images/boy.png",
                          title: "Always Fascinated learning",
                          subTitle:
                              "Anywhere, anytime. The time is at your discretion. So study whenever you can",
                          index: 3, context:context)
                    ],
                  ),
                  Positioned(
                      bottom: 50,
                      child: DotsIndicator(
                        position: index,
                        dotsCount: 3,
                        mainAxisAlignment: MainAxisAlignment.center,
                        decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(24.0, 8.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
