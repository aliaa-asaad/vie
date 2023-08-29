import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/images.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(children: [Positioned(child: Image.asset(AppImages.shape2,scale:.1,)),
            Column(
                children: []),
          ]),
        ),
      )),
    );
  }
}
