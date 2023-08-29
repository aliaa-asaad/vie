import 'package:flutter/material.dart';

import '../../../../components/custom_icon_button.dart';
import '../../../../handlers/media_quary.dart';

class DrugDetailsAppBar extends StatelessWidget {
  const DrugDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const CustomIconButton(
        isPop: true,
      ),

      /*  systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      */
      expandedHeight: MediaQueryHelper.height * 0.37,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      /* pinned: true,*/
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://medicinemarketplace.com/wp-content/uploads/2020/01/Panadol-15099-1024x1024.png",
          /* height: MediaQuaryHelper.height * 0.15,
          width: MediaQuaryHelper.width * 0.6, */
          fit: BoxFit.contain,
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      /*  bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
margin: EdgeInsets.symmetric(horizontal: 8.r),
          height: 20.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 8.0.r,
                            offset: const Offset(4, -4),
                          ),
                        ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0.r),
              topRight: Radius.circular(30.0.r),
            ),
          ),
          child: Container(
            width: MediaQuaryHelper.width * 0.13,
            height: MediaQuaryHelper.height * 0.005,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10.0.r),
            ),
          ),
        ),
      ),
    */
    );
  }
}
