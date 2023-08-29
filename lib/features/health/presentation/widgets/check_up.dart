import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';

class CheckUp extends StatelessWidget {
  const CheckUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQueryHelper.height,
      child: GridView.builder(
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(8.r),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: MediaQueryHelper.width * 0.02,
            mainAxisSpacing: MediaQueryHelper.height * 0.01,
            mainAxisExtent: MediaQueryHelper.height * 0.2),
        itemBuilder: (context, index) => Container(
          //height: MediaQuaryHelper.height * 0.15,
          width: MediaQueryHelper.width * 0.55,
          // margin: EdgeInsets.fromLTRB(12.0.r, 12.0.r, 12.0.r, 20.0.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 8.0.r,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(children: [
            Container(
              width: MediaQueryHelper.width,
              padding: EdgeInsets.all(8.0.r),
              margin: EdgeInsets.fromLTRB(4.0.r, 4.0.r, 4.0.r, 16.0.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0.r),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: SvgPicture.asset(
                AppImages.diabetes,
                height: MediaQueryHelper.height * 0.1,
                width: MediaQueryHelper.width * 0.1,
              ),
            ),
            Text(
              'Suger Blood',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ]),
        ),
      ),
    );
  }
}
