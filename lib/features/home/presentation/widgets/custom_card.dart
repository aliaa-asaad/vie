import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/components/custom_cart_button.dart';

import '../../../../components/custom_price.dart';
import '../../../../handlers/media_quary.dart';
import '../../../../routing/navigator.dart';
import '../../../../routing/routes.dart';

class CustomCard extends StatelessWidget {
  final bool isOffer;
  const CustomCard({
    super.key,
    this.isOffer = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppRoutes.pushNamedNavigator(
          routeName: Routes.drugDetails, context: context),
      child: SizedBox(
        height: MediaQueryHelper.height * 0.32,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width: MediaQueryHelper.width * 0.55,
            margin: EdgeInsets.fromLTRB(12.0.r, 12.0.r, 12.0.r, 20.0.r),
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
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0.r),
                          topRight: Radius.circular(14.0.r)),
                      child: Image.network(
                        "https://medicinemarketplace.com/wp-content/uploads/2020/01/Panadol-15099-1024x1024.png",
                        height: MediaQueryHelper.height * 0.15,
                        width: MediaQueryHelper.width * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Panadol Advance 500 mg 24 Tablets',
                              style: Theme.of(context).textTheme.bodyLarge,
                              maxLines: 2,
                            ),
                            const Spacer(),
                            //SizedBox(height: MediaQuaryHelper.height*.01),
                            Row(children: [
                              isOffer
                                  ? Text(
                                      '\$30.00',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  : Container(),
                              SizedBox(width: MediaQueryHelper.width * .01),
                              const CustomPrice(),
                              const Spacer(),
                              const CustomCartButton(icon: Icons.add)
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                isOffer
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8.0.r),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13.0.r),
                              bottomLeft: Radius.circular(13.0.r),
                            ),
                          ),
                          child: Text('33%',
                              style: Theme.of(context).textTheme.displaySmall!
                              /*  .copyWith(
                            color:
                                Theme.of(context).colorScheme.primary,
                          ), */
                              ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
