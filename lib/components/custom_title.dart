import 'package:flutter/material.dart';

import '../handlers/localization.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final bool isCategories;
  const CustomTitle({
    super.key,
    required this.title, this.isCategories=false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          getLang(context, title),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        isCategories? Container():
        Text(
          getLang(context, 'see_all'),
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ],
    );
  }
}
