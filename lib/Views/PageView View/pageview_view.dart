import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:short_key_app/Views/Onboarding%20View%202/onboarding_view_2.dart';
import 'package:short_key_app/Views/Onboarding%20View/onboarding_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Constants/App Colors/app_colors.dart';
import '../../Constants/App Images/app_images.dart';
import '../../Providers/my_state.dart';

class PageViewScroll extends StatelessWidget {
   const PageViewScroll({Key? key}) : super(key: key);
 // final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MyState>(
        builder: (context, myState, _) {
          return Column(
            children: [
              Expanded(
                child: PageView(
                  controller: myState.pageController,
                  children: myState.imageList
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: myState.pageController,
                      count: 2,
                    ),
                    GestureDetector(
                      onTap: () => myState.nextPage(),
                      child: Container(
                          height: 45.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle
                          ),
                          child: SizedBox(
                            width: 12.h,
                            height: 12.h,
                            child: SvgPicture.asset(
                              AppImages.arrowRight,
                            ),
                          )
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h,)
            ],
          );
        }),
      

    );
  }
}
