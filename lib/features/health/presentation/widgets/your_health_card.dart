import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/images.dart';
import '../../../../handlers/localization.dart';
import '../../../../handlers/media_quary.dart';

class YourHealthCard extends StatelessWidget {
  const YourHealthCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> health = [
      {'title': 'suger_blood', 'icon': AppImages.diabetes, 'value': 100},
      {'title': 'pressure_blood', 'icon': AppImages.pressure, 'value': 100},
      {'title': 'weight', 'icon': AppImages.weight, 'value': 100},
      {'title': 'hemoglobin', 'icon': AppImages.hemoglobin, 'value': 100},
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.r),
      padding: EdgeInsets.all(8.r),
      width: MediaQueryHelper.width,
      height: MediaQueryHelper.height * .3,
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
      child: GridView.builder(
          itemBuilder: (context, index) =>
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      health[index]['icon'],
                      height: MediaQueryHelper.height * .04,
                      width: MediaQueryHelper.width * .04,
                    ),
                    Text(
                      '  ${getLang(context, health[index]['title'])}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                ),
                Text.rich(
                  TextSpan(
                      text: health[index]['value'].toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                      children: [
                        TextSpan(
                          text: 'mg/dl',
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                      ]),
                )
              ]),
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 100)),
    );
  }
}
