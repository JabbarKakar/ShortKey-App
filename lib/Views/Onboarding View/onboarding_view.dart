import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:short_key_app/Constants/App%20Colors/app_colors.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';

import '../Onboarding View 2/onboarding_view_2.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: 45.h,
                width: 135.w,
                child: SvgPicture.asset(
                    AppImages.mainLogo
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 485.h,
              width: double.infinity,
              child: Image.asset(AppImages.fourPhone, fit: BoxFit.fill,)
            ),
          ],
        ),
      ),

    );
  }
}
