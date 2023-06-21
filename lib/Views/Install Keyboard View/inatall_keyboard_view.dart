import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:short_key_app/Compontents/main_button.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';
import 'package:short_key_app/Providers/my_state.dart';

import '../../Constants/App Colors/app_colors.dart';
import '../Bottom Nav Bar/bottom_navigation_bar.dart';

class InstallKeyboardView extends StatefulWidget {
  const InstallKeyboardView({Key? key}) : super(key: key);

  @override
  State<InstallKeyboardView> createState() => _InstallKeyboardViewState();
}

class _InstallKeyboardViewState extends State<InstallKeyboardView> {

  //MyState state = MyState();
  bool isKeyEnabled = false;
  bool isAccessEnabled = false;

  List<Map<String, dynamic>> dataList = [];

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final myState = Provider.of<MyState>(context, listen: false);
    dataList = [
      {
        'title': 'Open Settings',
        'widget': const Icon(Icons.settings)
      },
      {
        'title': 'Scroll down and go to ShortKey ',
        'widget': const Icon(Icons.keyboard)
      },
      {
        'title': 'go to keyboards',
        'widget': const Icon(Icons.keyboard)
      }
    ];
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Install keyboard',
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Watch instructions video on how to install the ShortKey keyboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.greyText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                  height: 135.h,
                  width: 312.w,
                  child: Image.asset(
                    AppImages.keyBoard,
                    fit: BoxFit.fill,
                  )),
              Text(
                'Or follow the next steps',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.greyText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 215.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final items = dataList[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(
                          height: 60.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.container,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: ListTile(
                              leading: items['widget'],
                              title: Text(items['title'],
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                      ),
                    );
                  },
                ),
              ),
              Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.container,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Switch(
                          value: isKeyEnabled,
                          onChanged: (value){
                            setState(() {
                              isKeyEnabled = value;
                            });

                          }),
                      title: Text('Enable - Shortkey',
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 10.h,),
              Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.container,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Switch(
                          value: isAccessEnabled,
                          onChanged: (value){
                            setState(() {
                              isAccessEnabled = value;
                            });

                          }),
                      title: Text('Enable - Allow full Access',
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 25.h,),
              MainButton(
                  title: 'Done',
                  onTap: (){
                    Get.off(() => const BottomNavigationBarView());
                  }),
              SizedBox(height: 25.h,),

            ],
          ),
        ),
      ),
    );
  }
}
