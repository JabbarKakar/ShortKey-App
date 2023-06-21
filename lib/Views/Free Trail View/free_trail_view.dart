import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:short_key_app/Views/Install%20Keyboard%20View/inatall_keyboard_view.dart';

import '../../Compontents/main_button.dart';
import '../../Constants/App Colors/app_colors.dart';
import '../../Constants/App Images/app_images.dart';

class FreeTrailView extends StatefulWidget {
  const FreeTrailView({Key? key}) : super(key: key);

  @override
  State<FreeTrailView> createState() => _FreeTrailViewState();
}

class _FreeTrailViewState extends State<FreeTrailView> {
  List<Map<String, dynamic>> dataList = [
    {
      'title': 'Today: Get Instant Access',
      'subTitle':
          'Unlimited access to all features. Create fully customized keyboard.',
      'img': AppImages.lock,
    },
    {
      'title': 'Day 5: Trial Reminder',
      'subTitle':
          'We’ll send you a notification. Cancel anytime in just 15 seconds.',
      'img': AppImages.bell,
    },
    {
      'title': 'Day 7: Trial Ends',
      'subTitle': 'Your subscription will start in 7 days.',
      'img': AppImages.star,
    }
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Shortkey for free',
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Get your own hyper - personalized keyboard. Use keyboard shortcuts to boost your productivity',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'How your free trial works:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 18.h,
              ),
              SizedBox(
                height: 255.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = dataList[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 55.h,
                                height: 55.h,
                                child: SvgPicture.asset(
                                  item['img'],
                                  fit: BoxFit.fill,
                                )),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  item['title'],
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text(
                                  item['subTitle'],
                                  style: TextStyle(
                                      color: AppColors.gray3,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Center(
                child: Text(
                  'First 7 days free\nthen £6.47/month',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.gray3,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Center(
                child: MainButton(
                  title: 'Start 7-Day free trial',
                  onTap: () {
                    Get.off(() => const InstallKeyboardView());
                  },
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Restore Purchase ',
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryText),
                      ),
                      TextSpan(
                        text: ' | ',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryText,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryText),
                      ),
                      TextSpan(
                        text: ' & ',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryText,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryText,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryText),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
