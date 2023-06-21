import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:short_key_app/Compontents/custom_text_field.dart';
import 'package:short_key_app/Compontents/main_button.dart';
import 'package:short_key_app/Views/My%20Short%20View/my_short_view.dart';

import '../../Constants/App Colors/app_colors.dart';
import '../../Constants/App Images/app_images.dart';

import 'package:intl/intl.dart';

import '../Bottom Nav Bar/bottom_navigation_bar.dart';

class CustomButtonView extends StatefulWidget {
  const CustomButtonView({Key? key}) : super(key: key);

  @override
  State<CustomButtonView> createState() => _CustomButtonViewState();
}

class _CustomButtonViewState extends State<CustomButtonView> {

  /// Date picker method
  DateTime? dateTime;
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String selectedDate = "";

  Future<void> getCurrentDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(200),
      onDatePickerModeChange: (value) {
        setState(() {});
      },
      lastDate: DateTime(3000),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate.toString();

        print("this is data ${selectedDate.toString()}");
      });
    }
  }


  final buttonTitleController = TextEditingController();
  final phraseController = TextEditingController();

  List<Color> colors = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
    AppColors.color5,
    AppColors.color6,
    AppColors.color7,
    AppColors.color8,
    AppColors.color9,
    AppColors.color10,
    AppColors.color11,
    AppColors.color13,
  ];

  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Custom ',
                          style: TextStyle(
                              color: AppColors.primaryText,
                              decoration: TextDecoration.none,
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                            text: 'Button',
                            style: TextStyle(
                                color: AppColors.templatesText,
                                decoration: TextDecoration.none,
                                fontSize: 32.sp,
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
              CustomTExtField(
                height: 70.h,
                width: double.infinity,
                title: 'Button title',
                controller: buttonTitleController,
                onChanged: (value) {},
                maxLines: 1,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTExtField(
                height: 190.h,
                width: double.infinity,
                title: 'Phrase',
                controller: phraseController,
                onChanged: (value) {},
                maxLines: 5,
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.templatesText),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 25.h,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: colors.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 3.w),
                                  child: Container(
                                    height: 24.h,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: colors[index]),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            colorPickerPalette(onChnage: (newColor){
                              print("color code : ${newColor.value}");
                            });
                          },
                          child: Icon(Icons.palette,
                          size: 24.sp,
                            color: AppColors.primaryText,
                          ),
                        ),


                      ],
                    ),

                    SizedBox(height: 30.h,),
                    MainButton(
                        title: 'Save Button',
                        onTap: (){
                          Get.to(() => const BottomNavigationBarView());
                        }),
                    SizedBox(height: 25.h,),
                    Container(
                      height: 135.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Color',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.templatesText),
                              ),
                            ),
                            SizedBox(height: 7.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 115.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                        'Data variable',
                                        style: TextStyle(color: AppColors.buttonText,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                        'Clipboard variable',
                                        style: TextStyle(color: AppColors.buttonText,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 7.h,),
                            Row(
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 95.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                        'Data variable',
                                        style: TextStyle(color: AppColors.buttonText,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )),
                                ),
                                SizedBox(width: 10.w,),
                                Container(
                                  height: 30.h,
                                  width: 135.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                        'Clipboard variable',
                                        style: TextStyle(color: AppColors.buttonText,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void colorPickerPalette({required void Function(Color) onChnage}){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: onChnage,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(() => currentColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }




}
