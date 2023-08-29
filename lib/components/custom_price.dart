import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$20.00',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
