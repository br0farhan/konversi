import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:konversi/logic/config/hive_storage.dart';
import 'package:konversi/logic/controllers/symbol_controller.dart';
import 'package:konversi/ui/views/splash_screen.dart';

late HiveStorage hiveStorage;

void main() async {
  // hiveStorage = HiveStorage();
  // await hiveStorage.instance("unpak_konversi");
  Get.put(SymbolController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.light),
          home: const SplashScreen(),
        );
      },
    );
  }
}
