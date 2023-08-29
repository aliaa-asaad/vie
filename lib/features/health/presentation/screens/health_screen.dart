import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../components/custom_app_bar.dart';
import '../../../../components/custom_title.dart';
import '../widgets/check_up.dart';
import '../widgets/your_health_card.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              CustomAppBar(title: 'your_health'),
              YourHealthCard(),
              CustomTitle(
                title: 'check_up',
                isCategories: true,
              ),
              CheckUp()
            ]),
          ),
        ),
      ),
    );
  }
}
