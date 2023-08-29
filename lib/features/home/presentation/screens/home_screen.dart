import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacy_app/components/custom_app_bar.dart';
import 'package:pharmacy_app/core/images.dart';
import 'package:pharmacy_app/handlers/media_quary.dart';

import '../../../../components/custom_title.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(isHome: true),
                CustomTitle(title: 'offers'),
                CustomCard(isOffer: true),
                CustomTitle(title: 'drugs'),
                CustomCard(),
                CustomTitle(title: 'categories', isCategories: true),
                CustomCategories()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCategories extends StatelessWidget {
  const CustomCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryHelper.width,
      height: MediaQueryHelper.height * 0.3,
      padding: EdgeInsets.all(8.0.r),
      margin: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 8.0.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const CustomCategoryCard(),
          Container(
            height: MediaQueryHelper.height * 0.3,
            width: MediaQueryHelper.width * .005,
            color: Colors.grey,
          ),
          const CustomCategoryCard(),
          Container(
            height: MediaQueryHelper.height * 0.3,
            width: MediaQueryHelper.width * .005,
            color: Colors.grey,
          ),
          const CustomCategoryCard(),
        ],
      ),
    );
  }
}

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          AppImages.medicine,
          height: 60,
          width: 60,
        ),
        // Spacer(flex: 1),
        const Text('Medicine'),
        //  Divider(color: Colors.grey,thickness: 2,),
        Container(
          height: MediaQueryHelper.height * .0025,
          width: MediaQueryHelper.width * .27,
          color: Colors.grey,
        ),
        SvgPicture.asset(
          AppImages.medicine,
          height: 60,
          width: 60,
        ),
        //   Spacer(),
        const Text('Medicine'),
      ],
    );
  }
}
