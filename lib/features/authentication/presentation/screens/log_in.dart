import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/custom_button.dart';
import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';
import '../../../../routing/navigator.dart';
import '../../../../routing/routes.dart';
import '../widgets/custom_form_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
            SvgPicture.asset(
              AppImages.login,
              height: MediaQueryHelper.height * .3,
            ),
            SizedBox(
              height: MediaQueryHelper.height * .05,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    /* defaultNavigator(
                                context, const ForgetPasswordScreen()); */
                  },
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQueryHelper.height * .12,
            ),
            CustomButton(
              text: 'Log In',
              onPressed: () { AppRoutes.pushNamedNavigator(
                        routeName: Routes.navBar, context: context);},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
              
              
                TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14.sp),
                  ),
                  onPressed: () {
                    AppRoutes.pushNamedNavigator(
                        routeName: Routes.signUp, context: context);
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
