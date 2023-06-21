import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:short_key_app/Providers/my_state.dart';

import '../Constants/App Colors/app_colors.dart';

class BrandingContainer extends StatefulWidget {
  const BrandingContainer({
    super.key,
  });

  @override
  State<BrandingContainer> createState() => _BrandingContainerState();
}

class _BrandingContainerState extends State<BrandingContainer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyState>(
      builder: (BuildContext context, myStateProvider, _) {
        return Container(
          height: 140.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.container,
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: myStateProvider.isBrand1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 120.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Main',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.greyText),
                              ),
                              Icon(
                                Icons.folder,
                                size: 30,
                                color: AppColors.templatesText,
                              ),
                              Text(
                                'Brand 1',
                                style: TextStyle(
                                  color: AppColors.templatesText,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'Brand Hashtags',
                                style: TextStyle(
                                    color: AppColors.buttonText,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'Contact Information',
                                style: TextStyle(
                                    color: AppColors.buttonText,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'Brand Hashtags',
                                style: TextStyle(
                                    color: AppColors.buttonText,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                'Contact Information',
                                style: TextStyle(
                                    color: AppColors.buttonText,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        myStateProvider.isOpen
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          myStateProvider.pageOneSelect();
                                        },
                                        child: Container(
                                          height: 30.h,
                                          width: 62.w,
                                          decoration: BoxDecoration(
                                              color: myStateProvider
                                                      .isPageOneSelected
                                                  ? AppColors.templatesText
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Center(
                                            child: Text(
                                              'Page 1',
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          myStateProvider.pageTwoSelect();
                                        },
                                        child: Container(
                                          height: 30.h,
                                          width: 62.w,
                                          decoration: BoxDecoration(
                                              color: myStateProvider
                                                      .isPageTwoSelected
                                                  ? AppColors.templatesText
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Center(
                                            child: Text(
                                              'Page 2',
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 62.w,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                          child: Text(
                                            'Page 3',
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  myStateProvider.isPageOneSelected
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 110.w,
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.page1Container1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Center(
                                                  child: Text(
                                                '4/4/18, 05:45PM',
                                                style: TextStyle(
                                                    color: AppColors.pageText,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Container(
                                              height: 30.h,
                                              width: 110.w,
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.page1Container2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Center(
                                                  child: Text(
                                                '4/4/18, 05:45PM',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.templatesText,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                myStateProvider.brand1Open();
                                              },
                                              child: Container(
                                                height: 42.h,
                                                width: 112.w,
                                                decoration: BoxDecoration(
                                                    color: AppColors
                                                        .page2Container1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.folder,
                                                      size: 30,
                                                      color: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Text(
                                                      'Brand 1',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Container(
                                              height: 42.h,
                                              width: 112.w,
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.page2Container2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.folder,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    'Brand 2',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Not short yet',
                                    style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      myStateProvider.openContainer();
                                    },
                                    child: Text(
                                      '+Add New',
                                      style: TextStyle(
                                          color: AppColors.buttonText,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    )),
        );
      },
    );
  }
}
