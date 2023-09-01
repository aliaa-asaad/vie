import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CircleAvatar(
                    radius: 37.r,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: CircleAvatar(
                      radius: 35.r,
                      backgroundImage: AssetImage(AppImages.avatar),
                    ),
                  ),
                  SizedBox(
                    height: MediaQueryHelper.height * .01,
                  ),
                  Text(
                    'Aliaa Asaad',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),],);
  }
}