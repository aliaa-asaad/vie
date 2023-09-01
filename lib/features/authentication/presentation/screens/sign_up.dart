import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/custom_button.dart';
import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';
import '../../../../routing/navigator.dart';
import '../../../../routing/routes.dart';
import '../widgets/custom_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: SvgPicture.asset(
                AppImages.signUp,
                height: MediaQueryHelper.height * .25,
              ),
            ),
            SizedBox(
              height: MediaQueryHelper.height * .05,
            ),
            Text(
              'Username',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomFormField(
              height: MediaQueryHelper.height * .1,
              width: MediaQueryHelper.width,
              hintText: 'Aliaa Asaad',
              isPassword: false,
              textColor: Colors.black,
              type: TextInputType.name,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomFormField(
              height: MediaQueryHelper.height * .1,
              width: MediaQueryHelper.width,
              hintText: 'example@gmail.com',
              isPassword: false,
              textColor: Colors.black,
              type: TextInputType.emailAddress,
            ),
            Text(
              'Passwword',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomFormField(
              obSecure: true,
              height: MediaQueryHelper.height * .1,
              width: MediaQueryHelper.width,
              hintText: '123456',
              isPassword: true,
              suffix: Icons.visibility,
              textColor: Colors.black,
              type: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: MediaQueryHelper.height * .12,
            ),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                AppRoutes.pushNamedNavigator(
                    routeName: Routes.navBar, context: context);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
                TextButton(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14.sp),
                  ),
                  onPressed: () {
                    AppRoutes.pushNamedNavigator(
                        routeName: Routes.login, context: context);
                  },
                ),
              ],
            )
          ]),
        ),
      )),
    );
  }
}
