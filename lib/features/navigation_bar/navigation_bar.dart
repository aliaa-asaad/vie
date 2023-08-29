import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacy_app/core/images.dart';
import 'package:pharmacy_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:pharmacy_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:pharmacy_app/features/health/presentation/screens/health_screen.dart';
import 'package:pharmacy_app/features/home/presentation/screens/home_screen.dart';
import 'package:pharmacy_app/features/more/presentation/screens/more_screen.dart';
import 'package:pharmacy_app/handlers/media_quary.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  CustomNavigationBarState createState() => CustomNavigationBarState();
}

class CustomNavigationBarState extends State<CustomNavigationBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex]['screen'],
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            bottom: MediaQueryHelper.width * .02,
            left: MediaQueryHelper.width * .02,
            right: MediaQueryHelper.width * .02,
            top: 0,
          ),
          height: MediaQueryHelper.height * .075,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                color:
                    Theme.of(context).colorScheme.background.withOpacity(.15),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              5,
              (index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: MediaQueryHelper.width * .01),
                    SvgPicture.asset(
                      screens[index]['icon'],
                      height: MediaQueryHelper.height * .03,
                      width: MediaQueryHelper.width * .036,
                      colorFilter: index == currentIndex
                          ? ColorFilter.mode(
                              Theme.of(context).colorScheme.primary,
                              BlendMode.srcIn)
                          : ColorFilter.mode(
                              Theme.of(context).colorScheme.background,
                              BlendMode.srcIn),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        top: index == currentIndex
                            ? MediaQueryHelper.width * .029
                            : 0,
                        right: MediaQueryHelper.width * .02,
                        left: MediaQueryHelper.width * .02,
                      ),
                      width: MediaQueryHelper.width * .11,
                      height: index == currentIndex
                          ? MediaQueryHelper.height * .004
                          : 0,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(1.5)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  List<Map<String, dynamic>> screens = [
    {'icon': AppImages.home, 'screen': const HomeScreen()},
    {'icon': AppImages.health, 'screen': const HealthScreen()},
    {'icon': AppImages.cart, 'screen': const CartScreen()},
    {'icon': AppImages.chat, 'screen': const ChatScreen()},
    {'icon': AppImages.more, 'screen': const MoreScreen()},
  ];
}
