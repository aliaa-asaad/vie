import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy_app/handlers/media_quary.dart';

import '../../../components/custom_button.dart';
import '../../../core/images.dart';
import '../../../routing/navigator.dart';
import '../../../routing/routes.dart';
import '../widgets/custom_dot.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoardingList.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(40.r, 52.h, 40.r, 40.r),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppImages.logo,
                        height: MediaQueryHelper.height * .15,
                      ),
                      SvgPicture.asset(
                        onBoardingList[index]['image'],
                        height: MediaQueryHelper.height * .35,
                      ),
                      SizedBox(height: MediaQueryHelper.height * .02),
                      Text(onBoardingList[index]['description'],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium)
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                onBoardingList.length,
                (index) => CustomDot(
                      currentIndex: currentIndex,
                      index: index,
                    )),
          ),
          CustomButton(
              onPressed: () {
                if (currentIndex == onBoardingList.length - 1) {
                  AppRoutes.pushNamedNavigator(
                      routeName: Routes.login, context: context);
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              text: currentIndex == onBoardingList.length - 1
                  ? "Continue"
                  : "Next"),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> onBoardingList = [
  {
    'description':
        'Wherever you are, you will receive our service and integrated care',
    'image': AppImages.onBoarding1,
    'shape': AppImages.shape1
  },
  {
    'description':
        'We always try to provide an environment of distinguished doctors and equipment at the highest level to maintain your health',
    'image': AppImages.onBoarding2,
    'shape': AppImages.shape2
  },
  {
    'description': 'Making your life better is our ultimate goal',
    'image': AppImages.onBoarding3,
    'shape': AppImages.shape3
  },
];
