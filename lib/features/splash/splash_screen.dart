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
              routeName: Routes.onboarding, context: context, replacement: true)),
      builder: (context, _) => Scaffold(
        body: Stack(
          children:[ SizedBox(height: MediaQueryHelper.height,width: MediaQueryHelper.width,),
          Positioned(right:MediaQueryHelper.width*-.9,
            top:MediaQueryHelper.height*-.1,
            child:Image.asset(AppImages.shape1)),
            Positioned(left:MediaQueryHelper.width*-.7,
            top:MediaQueryHelper.height*-.08,
            child:Image.asset(AppImages.shape3)),
             Positioned(left:MediaQueryHelper.width*-.1,
            bottom:MediaQueryHelper.height*-.3,
            child:Image.asset(AppImages.shape2)),
            Center(
              child: ScaleTransition(
              scale: animation,
              child: SvgPicture.asset(
                AppImages.logo,
                height: MediaQueryHelper.height * 0.15,
                width: MediaQueryHelper.width * 0.15,
              ),
                      ),
            ),]
        ),
      ),
    );
  }
}
