import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Compontents/branding_container.dart';
import '../../Constants/App Colors/app_colors.dart';
import '../../Constants/App Images/app_images.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Test ',
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: 'Clear All',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.greyText,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: Image.asset(AppImages.profile))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                height: 293.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: const Color(0xff4075CD).withOpacity(0.08),
                        offset: const Offset(0, 10),
                      )
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 22.0, top: 20, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'type to test your short key'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                            color: AppColors.templatesText),
                      ),
                      Text(
                        'Type anything that you can test your short key settings',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.buttonText),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const BrandingContainer(),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 42.h,
                    width: 87.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        '123',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryText),
                      ),
                    ),
                  ),
                  Container(
                    height: 42.h,
                    width: 155.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'space',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryText),
                      ),
                    ),
                  ),
                  Container(
                    height: 42.h,
                    width: 87.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'return',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryText),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppImages.emoji),
                  SvgPicture.asset(AppImages.mic),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
