import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacy_app/core/images.dart';
import 'package:pharmacy_app/features/more/presentation/widgets/profile_shape.dart';
import 'package:pharmacy_app/handlers/localization.dart';
import 'package:pharmacy_app/handlers/media_quary.dart';

import '../widgets/profile_app_bar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> profileList = [
      {'title': 'edit_profile', 'icon': AppImages.profile},
      {'title': 'language', 'icon': AppImages.localization},
      {'title': 'payment_card', 'icon': AppImages.payment},
      {'title': 'privacy_policy', 'icon': AppImages.privacyPolicy},
      {'title': 'log_out', 'icon': AppImages.logOut},
/* {'title':'','icon':AppImages.},
{'title':'','icon':AppImages.},  */
    ];
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: MediaQueryHelper.height,
            width: MediaQueryHelper.width,
          ),
          const ProfileShape(),
          Padding(
            padding: EdgeInsets.fromLTRB(16.r, 24.r, 16.r, 16.r),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ProfileAppBar(),
                  SizedBox(
                    height: MediaQueryHelper.height,
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 32.r),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 5,
                      itemBuilder: (context, index) => ListTile(
                          title: Text(
                            '${getLang(context, profileList[index]['title'])}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          leading: SvgPicture.asset(
                            profileList[index]['icon'],
                            height: MediaQueryHelper.height * 0.03,
                            width: MediaQueryHelper.width * .03,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: Theme.of(context).iconTheme.color,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
