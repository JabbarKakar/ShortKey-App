import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:short_key_app/Constants/App%20Colors/app_colors.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';

class MoreView extends StatefulWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {

  List<String> imagesList = [
    AppImages.buy,
    AppImages.sync,
    AppImages.howTo,
    AppImages.support,
    AppImages.terms,
    AppImages.backup,
  ];

  List<String> titleList = [
    'Buy Premium',
    'Sync',
    'How To',
    'Support',
    'Terms and Conditions',
    'Backup',
  ];

  List<String> subTitleList = [
    'Get full access to all features!',
    'Sync all short keys across devices',
    'Learn with step by step tutorials',
    'Need help? or find any trouble?',
    'Reviews our terms and conditions',
    'Create short keys backup to restore it later on or when your change device anytime',
  ];


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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('More',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500
                  ),),
                SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: Image.asset(AppImages.profile))
              ],
            ),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView.builder(
                itemCount: imagesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 50.w,
                              height: 50.h,
                              child: SvgPicture.asset(imagesList[index], fit: BoxFit.fill,)),
                          Expanded(
                            child: ListTile(
                              title: Text(titleList[index],
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500
                                ),),
                              subtitle: Text(subTitleList[index], style: TextStyle(
                                  color: AppColors.gray3,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400
                              ),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
