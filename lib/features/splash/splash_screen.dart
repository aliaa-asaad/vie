import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacy_app/routing/navigator.dart';

import '../../core/images.dart';
import '../../handlers/media_quary.dart';
import '../../routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();

    splashAnimation();
  }

// function that controls animation of logo
  void splashAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    animation = Tween(begin: 1.0, end: 1.5)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
          const Duration(seconds: 3),
          () => AppRoutes.pushNamedNavigator(
              routeName: Routes.home, context: context, replacement: true)),
      builder: (context, _) => Scaffold(
        body: Center(
          child: ScaleTransition(
            scale: animation,
            child: SvgPicture.asset(
              AppImages.logo,
              height: MediaQueryHelper.height * 0.15,
              width: MediaQueryHelper.width * 0.15,
            ),
          ),
        ),
      ),
    );
  }
}
