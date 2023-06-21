import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Constants/App Colors/app_colors.dart';
import '../Constants/App Images/app_images.dart';
import 'main_button.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isSupportEnabled = false;
  bool isRememberEnabled = false;
  bool isICloudEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: 400.w,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, left: 8.w, right: 8.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppImages.mainLogo),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.container,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Keyboard Status',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.greyText),
                            ),
                            Text(
                              'Not active',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Container(
                          height: 28.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              'Activate',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Icon(Icons.check_circle,
                                  color: AppColors.primaryText),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Setup instructions',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.contact_support_rounded,
                                      color: AppColors.primaryText),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    'Support & feedback',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Switch(
                                  value: isSupportEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      isSupportEnabled = value;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Icon(Icons.clean_hands,
                                  color: AppColors.primaryText),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Clear all keys',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: AppColors.primaryText),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Rate us',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                               children: [
                                 Icon(Icons.circle_rounded,
                                     color: AppColors.primaryText),
                                 SizedBox(
                                   width: 8.w,
                                 ),
                                 Text(
                                   'Remember last page',
                                   style: TextStyle(
                                       color: AppColors.primaryText,
                                       fontSize: 14.sp,
                                       fontWeight: FontWeight.w400),
                                 ),
                               ],
                             ),
                              Switch(
                                  value: isRememberEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      isRememberEnabled = value;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                               children: [
                                 Icon(Icons.dashboard, color: AppColors.primaryText),
                                 SizedBox(
                                   width: 8.w,
                                 ),
                                 Text(
                                   'Buttons rows per page',
                                   style: TextStyle(
                                       color: AppColors.primaryText,
                                       fontSize: 14.sp,
                                       fontWeight: FontWeight.w400),
                                 ),
                               ],
                             ),
                              Container(
                                height: 30.h,
                                width: 30.h,
                                decoration: BoxDecoration(
                                    color: AppColors.gray3,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Icon(Icons.download, color: AppColors.primaryText),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Import keys from file',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             SizedBox(
                               child: Row(
                                 children: [
                                   Icon(Icons.upload, color: AppColors.primaryText),
                                   SizedBox(
                                     width: 8.w,
                                   ),
                                   Text(
                                     'Auto-backup to iCloud',
                                     style: TextStyle(
                                         color: AppColors.primaryText,
                                         fontSize: 14.sp,
                                         fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                             ),
                              Switch(
                                  value: isICloudEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      isICloudEnabled = value;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Card(
                      child: SizedBox(
                        height: 34.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Icon(Icons.cloud_sync,
                                  color: AppColors.primaryText),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Share keys',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                MainButton(
                  title: 'Request Feature',
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
