import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: []),
        ),
      )),
    );
  }
}
