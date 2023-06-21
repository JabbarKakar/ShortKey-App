

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Constants/App Colors/app_colors.dart';

class BottomSheetContainer extends StatelessWidget {
  final String title, image;
  final double height, width;
  final Function()? onTap;
  const BottomSheetContainer({
    super.key, required this.title, required this.image, required this.height, required this.width, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.container,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(image,
              color: AppColors.buttonText,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(width: 7.w,),
            Text(title,
                style: TextStyle(
                    color: AppColors.buttonText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                )
            )
          ],
        ),
      ),
    );
  }
}