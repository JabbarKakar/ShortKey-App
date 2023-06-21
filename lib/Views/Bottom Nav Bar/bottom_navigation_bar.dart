import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';
import 'package:short_key_app/Providers/my_state.dart';

import '../../Constants/App Colors/app_colors.dart';
import '../More View/more_view.dart';
import '../My Short View/my_short_view.dart';
import '../Templates View/templates_view.dart';
import '../Test View/test_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  MyState myState = MyState();

  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const MyShortView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          myState.showBottomSheet(context);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),

        child: SizedBox(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MyShortView();
                        currentTab = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      AppImages.noteList,
                      color: currentTab == 0
                          ? AppColors.primaryText
                          : AppColors.gray3,
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const TestView();
                        currentTab = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      AppImages.tool,
                      color: currentTab == 1
                          ? AppColors.primaryText
                          : AppColors.gray3,
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const TemplatesView();
                        currentTab = 2;
                      });
                    },
                    child: SvgPicture.asset(
                      AppImages.layout,
                      color: currentTab == 2
                          ? AppColors.primaryText
                          : AppColors.gray3,
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MoreView();
                        currentTab = 3;
                      });
                    },
                    child: SvgPicture.asset(
                      AppImages.more,
                      color: currentTab == 3
                          ? AppColors.primaryText
                          : AppColors.gray3,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
