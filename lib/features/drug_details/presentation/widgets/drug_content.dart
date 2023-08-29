import 'package:flutter/material.dart';

class DrugContent extends StatelessWidget {
  final String title;
  final bool isTitle;
  final String description;
  const DrugContent({
    super.key,
    this.isTitle = false,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      isTitle
          ? Text(
              '\$20.00',
              style: Theme.of(context).textTheme.titleMedium,
            )
          : Container(),
    ]);
  }
}
