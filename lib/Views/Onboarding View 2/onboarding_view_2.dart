import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:short_key_app/Constants/App%20Colors/app_colors.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';

class OnBoardingView2 extends StatelessWidget {
  const OnBoardingView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(

        children: [
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.h,),
                    SizedBox(
                      width: 125.w,
                      child: Text(
                        'Your Content In one keyboard',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SvgPicture.asset(AppImages.mainLogo)
                  ],
                ),
              ),

              SizedBox(
                  height: 510.h,
                  width: 200.w,
                  child: Image.asset(AppImages.halfPhones))
            ],
          ),

        ],
      ),
    );
  }
}
