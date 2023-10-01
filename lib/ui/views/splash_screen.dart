import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konversi/ui/constants/R/r.dart';
import 'package:konversi/ui/views/home_pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String route = "splashScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: R.colors.primaryColor,
        body: ListView(
          children: [
            SizedBox(
              height: 50.w,
            ),
            Center(
              child: Image.asset(
                R.assets.unpak,
                height: 252.w,
              ),
            ),
            SizedBox(
              height: 63.h,
            ),
            Center(
                child: Text(
              R.strings.splashscreen1,
              style: TextStyle(color: R.colors.whiteColor, fontSize: 22.sp),
            )),
            SizedBox(
              height: 81.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePages(),
                    ),
                    (route) => false);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:20 ),
                height: 55.w,
                width: 193.w,
                decoration: BoxDecoration(
                    color: R.colors.navbarColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                    child: Text(
                  R.strings.getStartup,
                  style: TextStyle(
                      color: R.colors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp),
                )),
              ),
            )
          ],
        ));
  }
}
