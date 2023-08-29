import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/custom_app_bar.dart';
import '../../../../core/images.dart';
import '../../../../handlers/media_quary.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const CustomAppBar(title: 'cart'),
            SizedBox(
              height: MediaQueryHelper.height,
              width: MediaQueryHelper.width,
              child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      Divider(),
                  itemCount: 20,
                  padding: EdgeInsets.only(top: 20.r),
                  itemBuilder: (context, index) => Row(
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            foregroundImage: const AssetImage(AppImages.avatar),
                          ),
                          SizedBox(
                            width: MediaQueryHelper.width * .03,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Aliaa',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    // Spacer(),
                                    CircleAvatar(
                                      radius: 8.r,
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      child: Text('1',
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'the first message',
                                      style:
                                          Theme.of(context).textTheme.labelSmall,
                                    ),
                                    Text(
                                      '12:00',
                                      style:
                                          Theme.of(context).textTheme.labelSmall,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
            )
          ]),
        ),
      )),
    );
  }
}
