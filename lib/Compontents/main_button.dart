

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/App Colors/app_colors.dart';

class MainButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const MainButton({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 280.w,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Center(
          child: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
    );
  }
}