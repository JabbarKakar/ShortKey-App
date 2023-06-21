

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/App Colors/app_colors.dart';

class WideContainer extends StatelessWidget {
  final String title1, title2;
  const WideContainer({
    super.key, required this.title1, required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.h,
      width: 160.w,
      child: Column(
        children: [
          Container(
            height: 135.h,
            width: 160.w,
            decoration: BoxDecoration(
                color: AppColors.container,
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 30.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                         title1,
                          style: TextStyle(color: AppColors.buttonText,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 30.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                         title2,
                          style: TextStyle(color: AppColors.buttonText,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text('Templates',
                style: TextStyle(color: AppColors.buttonText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400
              ),),
              Text('25k',
                style: TextStyle(color: AppColors.templatesText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                ),),
            ],
          )
        ],
      ),
    );
  }
}