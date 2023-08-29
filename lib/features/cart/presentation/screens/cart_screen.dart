import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/custom_app_bar.dart';
import '../../../../components/custom_elevated_button.dart';
import '../widgets/cart_list_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              const CustomAppBar(title: 'cart'),
              const CartListView(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Total: EGP100.00',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                const Expanded(
                    flex: 2, child: CustomElevatedButton(text: 'Buy')),
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
