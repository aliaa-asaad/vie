import 'package:flutter/material.dart';

import 'custom_cart_button.dart';

class CustomProductNumber extends StatelessWidget {
  const CustomProductNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomCartButton(icon: Icons.remove),
        Text(
          '1',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const CustomCartButton(icon: Icons.add),
      ],
    );
  }
}
