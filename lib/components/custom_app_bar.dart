import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacy_app/core/images.dart';
import 'package:pharmacy_app/routing/navigator.dart';

import '../handlers/localization.dart';
import '../handlers/media_quary.dart';
import '../routing/routes.dart';
import 'custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  final bool isHome;
  final String title;
  const CustomAppBar({super.key, this.isHome = false, this.title = 'home'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isHome
            ? SvgPicture.asset(
                AppImages.logo,
                height: MediaQueryHelper.height * .066,
                width: MediaQueryHelper.width * .066,
              )
            : Text(
                getLang(context, title),
                style: Theme.of(context).textTheme.titleLarge,
              ),
        const Spacer(),
        CustomIconButton(
          icon: AppImages.search,
          onPressed: () => AppRoutes.pushNamedNavigator(
              routeName: Routes.search, context: context),
        ),
        CustomIconButton(
          icon: AppImages.notification,
          onPressed: () => AppRoutes.pushNamedNavigator(
              routeName: Routes.notification, context: context),
        )
      ],
    );
  }
}
