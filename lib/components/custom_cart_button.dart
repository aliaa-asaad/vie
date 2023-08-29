import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../handlers/media_quary.dart';

class CustomCartButton extends StatelessWidget {
  final IconData icon;
  const CustomCartButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQueryHelper.height * .04,
        width: MediaQueryHelper.width * .1,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Icon(
          icon /* _shopping_cart_outlined */,
        ),
      ),
    );
  }
}
