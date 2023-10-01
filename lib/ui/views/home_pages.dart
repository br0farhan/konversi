import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:konversi/ui/constants/R/r.dart';
import 'package:konversi/ui/views/konversi_pages.dart';
import 'package:konversi/ui/views/prediksi_pages.dart';
import 'package:konversi/ui/views/symbol_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  String timeNow = "00:00:00 00-00-0000";
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          timeNow = DateFormat(
            " kk:mm:ss dd-MM-yyyy",
          ).format(DateTime.now());
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F3F3),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 147.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFDC27A),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50.r))),
            ),
            Container(
              height: 65.h,
              decoration: BoxDecoration(
                  color: R.colors.primaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50.r))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.w, left: 300.w),
              child: Text(
                timeNow,
                textAlign: TextAlign.center,
                style: TextStyle(color: R.colors.whiteColor, fontSize: 11.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Image.asset(
                  R.assets.animasi,
                  width: 220.w,
                ),
              ),
            )
          ]),
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Fitur Aplikasi",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KonversiPages()));
            },
            child: Container(
              height: 78.w,
              width: 366.w,
              margin: const EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                  //TODO Ketika di click
                  color: R.colors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r)),
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Konversi",
                    style: TextStyle(
                        color: R.colors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.sp),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrediksiPages()));
            },
            child: Container(
              height: 78.w,
              width: 366.w,
              margin: const EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                  color: R.colors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r)),
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Prediksi",
                    style: TextStyle(
                        color: R.colors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.sp),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SymbolPages()));
            },
            child: Container(
              height: 78.w,
              width: 366.w,
              margin: const EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                  color: R.colors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r)),
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Symbol",
                    style: TextStyle(
                        color: R.colors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.sp),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(height: 20,),
          Stack(
            children: [
              Container(
                height: 56,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                    color: R.colors.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    Image.asset(
                      R.assets.unpak,
                      width: 87.w,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50, bottom: 20),
                      child: Text(
                        "Aplikasi Konversi & Prediksi\nUniversitas Pakuan Bogor",
                        style: TextStyle(
                            color: R.colors.whiteColor, fontSize: 13.sp),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
