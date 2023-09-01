import 'package:flutter/material.dart';
import 'package:pharmacy_app/features/authentication/presentation/screens/sign_up.dart';
import 'package:pharmacy_app/features/drug_details/presentation/screens/drug_details.dart';
import 'package:pharmacy_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:pharmacy_app/features/more/presentation/screens/more_screen.dart';
import 'package:pharmacy_app/features/navigation_bar/navigation_bar.dart';
import 'package:pharmacy_app/features/search/presentation/screens/search_screen.dart';
import 'package:pharmacy_app/routing/routes.dart';

import '../features/authentication/presentation/screens/log_in.dart';
import '../features/cart/presentation/screens/cart_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/notification/presentation/screens/notification_screen.dart';
import '../features/onboarding/screens/onboarding_screen.dart';
import '../features/splash/splash_screen.dart';

class AppRoutes {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldState =
      GlobalKey<ScaffoldMessengerState>();
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.home:
        return AppRoutes.aniamtedNavigation(screen: const HomeScreen());
      case Routes.notification:
        return AppRoutes.aniamtedNavigation(screen: const NotificationScreen());
      case Routes.cart:
        return AppRoutes.aniamtedNavigation(screen: const CartScreen());
      case Routes.navBar:
        return AppRoutes.aniamtedNavigation(
            screen: const CustomNavigationBar());
      case Routes.more:
        return AppRoutes.aniamtedNavigation(screen: const MoreScreen());
      case Routes.search:
        return AppRoutes.aniamtedNavigation(screen: const SearchScreen());
        case Routes.chat:
        return AppRoutes.aniamtedNavigation(screen: const ChatScreen());
         case Routes.drugDetails:
        return AppRoutes.aniamtedNavigation(screen: const DrugDetails());
        case Routes.login:
        return MaterialPageRoute(builder: (context) => const LogInScreen());
         case Routes.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
        case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
     /*case Routes.courseDetails:
        return AppRoutes.aniamtedNavigation(
            screen: const CourseDetailsScreen());
      case Routes.coursesCategories:
        return AppRoutes.aniamtedNavigation(
            screen: CoursesCategoriesScreen(
              category: settings.arguments as Map,
            )); */
      default:
        return AppRoutes.aniamtedNavigation(
            screen: const Scaffold(
          body: Center(child: Text('Error')),
        ));
    }
  }

  static aniamtedNavigation({
    required Widget screen,
  }) {
    return PageRouteBuilder(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => screen);
  }

  static pushNamedNavigator(
      {required String routeName,
      required BuildContext context,
      Object? arguments,
      bool replacement = false}) {
    if (replacement) {
      navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      navigatorState.currentState!.pushNamed(routeName, arguments: arguments);
    }
  }
}
