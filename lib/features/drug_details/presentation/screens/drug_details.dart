import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/handlers/media_quary.dart';

import '../../../../components/custom_elevated_button.dart';
import '../../../../components/custom_product_number.dart';
import '../widgets/drug_content.dart';
import '../widgets/drug_details_app_bar.dart';

class DrugDetails extends StatelessWidget {
  const DrugDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          //physics: const BouncingScrollPhysics(),
          slivers: [
            const DrugDetailsAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  children: [
                    Container(
                      width: MediaQueryHelper.width,
                      height: MediaQueryHelper.height,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 8.0.r,
                            offset: const Offset(4, -4),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0.r),
                          topRight: Radius.circular(30.0.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Column(
                          children: [
                            const DrugContent(
                                isTitle: true,
                                title: 'Panadol',
                                description:
                                    '\nPanadol Advance 500 mg 24 Tablets\n'),
                            Divider(
                              color: Theme.of(context).colorScheme.secondary,
                              thickness: 2,
                            ),
                            const DrugContent(
                              description:
                                  '\nTablets Contain Paracetamol 500 mg Used As Analgesic & Anti-Pyretic.',
                              title: 'Description',
                            ),
                            const Spacer(),
                            const Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CustomProductNumber(),
                                ),
                                //Spacer(),
                                Expanded(
                                  flex: 3,
                                  child:
                                      CustomElevatedButton(text: 'Add to Cart'),
                                ),
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
          ],
        ),
      ),
    );
  }
}
