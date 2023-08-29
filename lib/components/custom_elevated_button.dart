import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  const CustomElevatedButton({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
        ),
        onPressed: () {},
        child:  Text(
          text,
          style: TextStyle(fontSize: 20),
        ));
  }
}
