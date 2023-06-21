import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/App Colors/app_colors.dart';

class CustomTExtField extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final TextEditingController controller;
  final int maxLines;
  final Function(String) onChanged;
  const CustomTExtField(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      required this.controller,
      required this.onChanged,
      required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(.2),
              offset: const Offset(0, 10),
              blurRadius: 16,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.templatesText),
            ),
            TextFormField(
              controller: controller,
              onChanged: onChanged,
              maxLines: maxLines,
              decoration: const InputDecoration(border: InputBorder.none),
            )
          ],
        ),
      ),
    );
  }
}
