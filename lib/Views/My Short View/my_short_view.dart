import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../Compontents/main_drawer.dart';
import '../../Constants/App Colors/app_colors.dart';
import '../../Constants/App Images/app_images.dart';
import '../../Providers/my_state.dart';

class MyShortView extends StatefulWidget {
  const MyShortView({Key? key}) : super(key: key);

  @override
  State<MyShortView> createState() => _MyShortViewState();
}

class _MyShortViewState extends State<MyShortView> {
  bool isKeyEnabled = false;
  bool isAccessEnabled = false;

  List<Map<String, dynamic>> dataList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final myState = Provider.of<MyState>(context, listen: false);
    dataList = [
      {'title': 'Setup instructions', 'widget': const Icon(Icons.check_circle)},
      {
        'title': 'Support & feedback',
        'widget': const Icon(Icons.contact_support_rounded),
        'treating': Switch(
            value: myState.isKeyEnabled,
            onChanged: (value) {
              myState.toggleShortKeyEnabled(value);
            })
      },
      {'title': 'Clear all keys', 'widget': const Icon(Icons.clean_hands)},
      {'title': 'Rate Us', 'widget': const Icon(Icons.star)},
      {
        'title': 'Remember last page',
        'widget': const Icon(Icons.circle_rounded),
        'treating': Switch(
            value: myState.isAccessEnabled,
            onChanged: (value) {
              myState.toggleShortAccessEnabled(value);
            })
      },
      {
        'title': 'Buttons rows per page',
        'widget': const Icon(Icons.dashboard),
        'treating': Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
              color: AppColors.gray3, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              '4',
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor),
            ),
          ),
        )
      },
      {
        'title': 'Import keys from file',
        'widget': const Icon(Icons.download),
      },
      {
        'title': 'Auto-backup to iCloud',
        'widget': const Icon(Icons.upload),
        'treating': Switch(
            value: myState.isAccessEnabled,
            onChanged: (value) {
              myState.toggleShortAccessEnabled(value);
            })
      },
      {
        'title': 'Import keys from file',
        'widget': const Icon(Icons.download),
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MainDrawer(),
      body: Padding(
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
                        text: 'My ',
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 32.sp,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                          text: 'Shorts',
                          style: TextStyle(
                              color: AppColors.templatesText,
                              fontSize: 32.sp,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500)),
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
              height: 230.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.container,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You have not added any shorts yet.',
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'It could be an email template, your address, a commonly used hashtags or anything you type often',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Tap on  ',
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                      children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.add_circle_outlined,
                          size: 25.sp,
                          color: AppColors.primaryColor,
                        )),
                        TextSpan(
                          text: '  bottom to add your first key.',
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Go to ',
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: 'Template',
                          style: TextStyle(
                            color: AppColors.templatesText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.templatesText,
                          ),
                        ),
                        TextSpan(
                          text: ' to get pre made shorts.',
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
