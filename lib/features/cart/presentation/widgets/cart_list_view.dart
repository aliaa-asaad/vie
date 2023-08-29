import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/custom_price.dart';
import '../../../../components/custom_product_number.dart';
import '../../../../handlers/media_quary.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQueryHelper.height * .73,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(8.r),
          height: MediaQueryHelper.height * 0.2,
          padding: EdgeInsets.all(8.r),
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
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.r),
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Image.network(
                      'https://medicinemarketplace.com/wp-content/uploads/2020/01/Panadol-15099-1024x1024.png'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Panadol Advance 500 mg 24 Tablets',
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 2,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: CustomProductNumber()),
                          CustomPrice()
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
