import 'package:flutter/material.dart';
import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';
class ProfileShape extends StatelessWidget {
  const ProfileShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQueryHelper.height * -.08,
        //left: -5,
        child: Image.asset(
          AppImages.profileShape,
          //height: 1000 ,
          width: MediaQueryHelper.width * 1,
          height: MediaQueryHelper.height * .55,
          fit: BoxFit.cover,
          //scale: .1,
        ));
  }
}
