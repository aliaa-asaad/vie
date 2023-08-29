import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/images.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final bool isPop;
  final Function()? onPressed;
  const CustomIconButton({
    super.key,
     this.icon=AppImages.search,
    this.onPressed,
    this.isPop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.r),
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        radius: 19.r,
        child: IconButton(
          onPressed: isPop ? Navigator.of(context).pop : onPressed,
          icon: isPop
              ? const Icon(Icons.arrow_back,color: Colors.black,)
              : SvgPicture.asset(
                  icon,
                  width: MediaQuery.of(context).size.width * 0.03,
                  height: MediaQuery.of(context).size.height * 0.03,
                  /* colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn), */
                ),
        ),
      ),
    );
  }
}
