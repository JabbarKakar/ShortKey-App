import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:short_key_app/Constants/App%20Colors/app_colors.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';

import '../../Compontents/custom_container.dart';
import '../../Compontents/wide_container.dart';

class TemplatesView extends StatefulWidget {
  const TemplatesView({Key? key}) : super(key: key);

  @override
  State<TemplatesView> createState() => _TemplatesViewState();
}

class _TemplatesViewState extends State<TemplatesView> {
  List<SelectableItem> items = [
    SelectableItem('All', false, 55.w, 40.h),
    SelectableItem('Sales', false, 75.w, 40.h),
    SelectableItem('Social', false, 80.w, 40.h),
    SelectableItem('Business', false, 100.w, 40.h),
  ];

  void toggleSelection(int selectedIndex) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        if (i == selectedIndex) {
          items[i].isSelected = true;
        } else {
          items[i].isSelected = false;
        }
      }
    });
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Templates',
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w500),
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
              SizedBox(
                height: 44.h,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final title = items[index].title ?? "";
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: InkWell(
                          onTap: () {
                            toggleSelection(index);
                          },
                          child: CustomContainer(
                            h: items[index].height,
                            w: items[index].width,
                            title: title,
                            textColor: items[index].isSelected
                                ? Colors.white
                                : AppColors.primaryText,
                            containerColor: items[index].isSelected
                                ? Colors.blue
                                : AppColors.container,
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WideContainer(title1: 'Brand Hashtags', title2: 'Price Response',),
                  WideContainer(title1: 'Contact Information', title2: 'Welcome Message',),
                ],
              ),
              SizedBox(height: 20.h,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WideContainer(title1: 'Brand Hashtags', title2: 'Price Response',),
                  WideContainer(title1: 'Contact Information', title2: 'Welcome Message',),
                ],
              ),
              SizedBox(height: 20.h,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WideContainer(title1: 'Brand Hashtags', title2: 'Price Response',),
                  WideContainer(title1: 'Contact Information', title2: 'Welcome Message',),
                ],
              ),
              SizedBox(height: 20.h,)
            ],
          ),
        ),
      ),
    );
  }
}



class SelectableItem {
  final String? title;
  bool isSelected;
  final double width;
  final double height;

  SelectableItem(
    this.title,
    this.isSelected,
    this.width,
    this.height,
  );
}
