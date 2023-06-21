import 'package:flutter/material.dart';
import 'package:short_key_app/Constants/App%20Colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final double h;
  final double w;
  final String title;
  final Color textColor, containerColor;
  const CustomContainer({Key? key, required this.h, required this.w, required this.title, required this.textColor, required this.containerColor}) : super(key: key);

  // final bool isAllSelected = false;
  // final bool isSalesSelected = false;
  // final bool isSocialSelected = false;
  // final bool isBusinessSelected = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: containerColor,
      borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(title, style: TextStyle(color: textColor),)),



    );
  }
}
