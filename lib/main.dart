import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:short_key_app/Providers/my_state.dart';
import 'Views/Bottom Nav Bar/bottom_navigation_bar.dart';
import 'Views/Free Trail View/free_trail_view.dart';
import 'Views/Install Keyboard View/inatall_keyboard_view.dart';
import 'Views/PageView View/pageview_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => MyState(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const PageViewScroll(),
        );
      },
    );
  }
}
