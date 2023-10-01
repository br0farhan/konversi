import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konversi/logic/controllers/symbol_controller.dart';
import 'package:konversi/ui/constants/R/r.dart';
import 'package:konversi/ui/widgets/dropdown_widget.dart';
import 'package:konversi/ui/widgets/text_dropdown_widget.dart';


class PrediksiPages extends StatelessWidget {
  PrediksiPages({Key? key}) : super(key: key);

  var kurs = "usd";
  TextEditingController predictInDays = TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.put(SymbolController()),
        builder: (SymbolController controller) {
          // predictInDays.addListener(() {
          //   controller.update();
          // });
          return Scaffold(
            backgroundColor: const Color(0xffE8F3F3),
            body: ListView(
              children: [
                Container(
                  height: 70.w,
                  color: R.colors.primaryColor,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: R.colors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 80),
                        child: Text(
                          "PREDIKSI",
                          style: TextStyle(
                              fontSize: 37.sp, color: R.colors.whiteColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 380.w,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.only(left: 13, right: 13, top: 13),
                  decoration: BoxDecoration(
                      color: R.colors.whiteColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KalogDropdown(
                        onChanged: (val) {
                          kurs = val.value;
                          controller.update();
                        },
                        options: [
                          KalogTextDropdownOption(
                        text: "USD - United Stated Dolar",
                        value: "USD",
                      ),
                      KalogTextDropdownOption(
                        text: "AUD - Australian Stated Dolar",
                        value: "AUD",
                      ),
                       KalogTextDropdownOption(
                        text: "JPY - Yen Jepang",
                        value: "JPY",
                      ),
                       KalogTextDropdownOption(
                        text: "SGD - Dolar Singapura",
                        value: "SGD",
                      ),
                       KalogTextDropdownOption(
                        text: "CNY - Ren Min Bi",
                        value: "CNY",
                      ),
                        KalogTextDropdownOption(
                        text: "MYR - Ringgit Malaysia",
                        value: "MYR",
                      ),
                       KalogTextDropdownOption(
                        text: "CHF - Franc Swiss",
                        value: "CHF",
                      ),
                      KalogTextDropdownOption(
                        text: "DKK - Kroner Denmark",
                        value: "DKK",
                      ),
                      KalogTextDropdownOption(
                        text: "HKD - Dolar Hongkong",
                        value: "HKD",
                      ),
                         KalogTextDropdownOption(
                        text: "KRW - Korean Won",
                        value: "KRW",
                      ),
                       KalogTextDropdownOption(
                        text: "IDR - Indonesian Rupiah",
                        value: "IDR",
                      ),
                        ],
                        initialValue: KalogTextDropdownOption(
                          text: "USD - United Stated Dolar",
                          value: "USD",
                        ),
                        fieldColor: R.colors.whiteColor,
                        borderColor: R.colors.primaryColor,
                        hint: "Pilih Mata Uang Kurs",
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: R.colors.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rupiah sekarang - ${DateFormat("dd-MM-yyyy").format(DateTime.now())}",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          FutureBuilder(
                              future:
                                  controller.getPrice(from: kurs, to: "idr"),
                              builder:
                                  (context, AsyncSnapshot<double?> snapshot) {
                                return Text(
                                  // controller.symbols.where((element) => element.aud). ?? "",
                                  snapshot.data?.toStringAsFixed(0) ?? "-",
                                  style: TextStyle(fontSize: 28.sp),
                                );
                              }),
                          Container(
                            color: R.colors.blackColor,
                            height: 3.w,
                            width: 93.w,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      TextField(
                        controller: predictInDays,
                        decoration: const InputDecoration(
                          labelText: "Prediksi dalam berapa hari kedepan",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Harga prediksi rupiah di tanggal ${DateFormat("dd-MM-yyyy").format(DateTime.now().add(Duration(days: int.tryParse(predictInDays.text) ?? 0)))}",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          FutureBuilder(
                              future: controller.getPrice(
                                  from: kurs,
                                  to: "idr",
                                  predicateInDays:
                                      int.tryParse(predictInDays.text) ?? 0),
                              builder:
                                  (context, AsyncSnapshot<double?> snapshot) {
                                return Container(
                                  // height: 40.w,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: R.colors.blueColor),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    snapshot.data?.toStringAsFixed(0) ?? "-",
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        color: R.colors.blackColor),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.update();
                            },
                            child: Center(
                              child: Container(
                                height: 25.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: R.colors.primaryColor),
                                child: Text(
                                  "Ingin tau",
                                  style: TextStyle(color: R.colors.whiteColor),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 56.w,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
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
                            margin: const EdgeInsets.only(left: 50),
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
        });
  }
}
