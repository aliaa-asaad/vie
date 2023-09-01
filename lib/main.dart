import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/features/drug_details/presentation/screens/drug_details.dart';
import 'package:pharmacy_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:pharmacy_app/features/splash/splash_screen.dart';
import 'package:pharmacy_app/routing/navigator.dart';
import 'package:pharmacy_app/routing/routes.dart';

import 'core/theme.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'features/navigation_bar/navigation_bar.dart';
import 'handlers/localization.dart';

void main() {
  runApp(ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vie',
      theme: AppTheme().lightTheme,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // initialRoute: Routes.splash,
      navigatorKey: AppRoutes.navigatorState,
      navigatorObservers: [AppRoutes.routeObserver],
      scaffoldMessengerKey: AppRoutes.scaffoldState,
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Arabic, no country code
      ],
      localeResolutionCallback: (currentLocales, supportedLocales) {
        if (currentLocales != null) {
          for (Locale locale in supportedLocales) {
            /*  if (supportedLocales.contains(locale)) {
              return locale;
            } */
            if (locale.languageCode == currentLocales.languageCode) {
              return locale;
            }
          }
        }
        return supportedLocales.first;
      },
      home: const SplashScreen(),
    );
  }
}
