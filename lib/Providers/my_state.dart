
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:short_key_app/Constants/App%20Images/app_images.dart';

import '../Compontents/bottom_sheet_container.dart';
import '../Constants/App Colors/app_colors.dart';
import '../Views/Custom Button View/custom_button_view.dart';
import '../Views/Free Trail View/free_trail_view.dart';
import '../Views/Onboarding View 2/onboarding_view_2.dart';
import '../Views/Onboarding View/onboarding_view.dart';
import '../Views/Test View/test_view.dart';



class MyState extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  final PageController _pageController = PageController();
  PageController get pageController => _pageController;
  final List<Widget> imageList = [
    const OnBoardingView(),
    const OnBoardingView2()
  ];

  /// Next page method
  void nextPage([int? index]) {
    if (index != null) {
      _currentPage = index;
    } else {
      if (_currentPage < imageList.length - 1) {
        _currentPage++;
      } else {
        // Navigate to the next screen
        Get.off(const FreeTrailView(), transition: Transition.fadeIn);
      }
    }
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }

 /// Open new container
bool isOpen = false;
  void openContainer(){
    isOpen = true;
    notifyListeners();
  }

  void closeContainer(){
    isOpen = false;
    notifyListeners();
  }

  /// Page 1 & 2 selection
bool isPageOneSelected = true;
bool isPageTwoSelected = false;
  void pageOneSelect(){
    isPageOneSelected = true;
    isPageTwoSelected = false;
    notifyListeners();
  }

  void pageTwoSelect(){
    isPageOneSelected = false;
    isPageTwoSelected = true;
    notifyListeners();
  }

  /// Brand 1
bool isBrand1 = false;
  void brand1Open(){
    isBrand1 = true;
    notifyListeners();
  }

  /// Main selected
bool isMainSelected = false;
  void mainSelected(){
    isMainSelected = true;
    notifyListeners();
  }


  DateTime? dateTime;
  String selectedDate = "";

  Future<void> getCurrentDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(200),
      onDatePickerModeChange: (value) {
        notifyListeners();
      },
      lastDate: DateTime(3000),
    );

    if (pickedDate != null) {
      selectedDate = pickedDate.toString();
      print("this is data ${selectedDate.toString()}");
      notifyListeners();
    }
  }

  // /// Date picker method
  // DateTime? dateTime;
  // String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  // String selectedDate = "";
  //
  // Future<void> getCurrentDate(BuildContext context) async {
  //   final pickedDate = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(200),
  //     onDatePickerModeChange: (value) {
  //       setState(() {});
  //     },
  //     lastDate: DateTime(3000),
  //   );
  //
  //   if (pickedDate != null) {
  //     setState(() {
  //       selectedDate = pickedDate.toString();
  //
  //       print("this is data ${selectedDate.toString()}");
  //     });
  //   }
  // }

/// Bottom sheet method
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 600.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.keyboard_arrow_down_outlined, size: 25.sp,)),
                  Center(
                    child: SizedBox(
                        height: 165.h,
                        width: 165.w,
                        child: Image.asset(AppImages.keys)),
                  ),
                  Center(
                    child: Text(
                      'Add New Short',
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 185.w,
                      child: Text(
                        'Create new short key and add it in your short key list',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text('BUTTONS',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomSheetContainer(
                        onTap: (){
                          Get.to(() => const CustomButtonView());
                        },
                        height: 60.h,
                        width: 157.w,
                        title: 'Custom Button',
                        image: AppImages.more,
                      ),
                      BottomSheetContainer(
                        onTap: (){
                          getCurrentDate(context);
                        },
                          height: 60.h,
                          width: 157.w,
                          title: 'Date & Time',
                          image: AppImages.calender),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('FOLDERS',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10.h,
                  ),
                  BottomSheetContainer(
                      height: 60.h,
                      width: 112.w,
                      title: 'Folders',
                      image: AppImages.folder),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('BREAK',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomSheetContainer(
                          height: 60.h,
                          width: 157.w,
                          title: 'Page Break',
                          image: AppImages.pageBreak),
                      BottomSheetContainer(
                          height: 60.h,
                          width: 157.w,
                          title: 'Line Break',
                          image: AppImages.lineBreak),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  BottomSheetContainer(
                      height: 60.h,
                      width: 112.w,
                      title: 'Tab',
                      image: AppImages.tab),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('DATA',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomSheetContainer(
                          height: 60.h,
                          width: 120.w,
                          title: 'Import',
                          image: AppImages.import),
                      BottomSheetContainer(
                          height: 60.h,
                          width: 120.w,
                          title: 'Export',
                          image: AppImages.export),
                    ],
                  ),
                  SizedBox(height: 20.h,)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Color Picker Method
  // void colorPickerPalette(){
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Pick a color!'),
  //         content: SingleChildScrollView(
  //           child: ColorPicker(
  //             pickerColor: pickerColor,
  //             onColorChanged: changeColor,
  //           ),
  //         ),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             child: const Text('Got it'),
  //             onPressed: () {
  //               setState(() => currentColor = pickerColor);
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }


  /// Shortkey switch

  bool isKeyEnabled = false;
  bool isAccessEnabled = false;

  void toggleShortKeyEnabled(bool value) {
    isKeyEnabled = value;
    notifyListeners();
  }

  void toggleShortAccessEnabled(bool value) {
    isAccessEnabled = value;
    notifyListeners();
  }

}
