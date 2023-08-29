import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
