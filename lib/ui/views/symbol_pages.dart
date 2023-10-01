import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konversi/logic/controllers/symbol_controller.dart';
import 'package:konversi/ui/constants/R/r.dart';

class SymbolPages extends StatelessWidget {
  const SymbolPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SymbolController>(),
        builder: (SymbolController controller) {
          return Scaffold(
            backgroundColor: const Color(0xffE8F3F3),
            body: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  height: 85.w,
                  color: R.colors.primaryColor,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: R.colors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 80),
                        child: Text(
                          "SYMBOL",
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
                Expanded(
                  child: Container(
                    width: 400.w,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding:
                        const EdgeInsets.only(left: 13, right: 13, top: 13),
                    decoration: BoxDecoration(
                        color: R.colors.whiteColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AED = ${controller.symbolsData?.aed ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AFN = ${controller.symbolsData?.afn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ALL = ${controller.symbolsData?.all ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AMD = ${controller.symbolsData?.amd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ANG = ${controller.symbolsData?.ang ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AOA = ${controller.symbolsData?.aoa ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ARS = ${controller.symbolsData?.ars ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AUD = ${controller.symbolsData?.aud ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AWG = ${controller.symbolsData?.awg ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "AZN = ${controller.symbolsData?.azn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BAM = ${controller.symbolsData?.bam ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BBD = ${controller.symbolsData?.bbd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BDT = ${controller.symbolsData?.bdt ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BGN = ${controller.symbolsData?.bgn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BHD = ${controller.symbolsData?.bhd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BIF = ${controller.symbolsData?.bif ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BMD = ${controller.symbolsData?.bmd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BND = ${controller.symbolsData?.bnd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BOB = ${controller.symbolsData?.bob ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BRL = ${controller.symbolsData?.brl ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BSD = ${controller.symbolsData?.bsd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BTC = ${controller.symbolsData?.btc ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BTN = ${controller.symbolsData?.btn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BWP = ${controller.symbolsData?.bwp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BYN = ${controller.symbolsData?.byn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BYR = ${controller.symbolsData?.byr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "BZD = ${controller.symbolsData?.bzd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CAD = ${controller.symbolsData?.cad ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CDF = ${controller.symbolsData?.cdf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CHF = ${controller.symbolsData?.chf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CLF = ${controller.symbolsData?.clf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CLP = ${controller.symbolsData?.clp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CNY = ${controller.symbolsData?.cny ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "COP = ${controller.symbolsData?.cop ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CRC = ${controller.symbolsData?.crc ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CUC = ${controller.symbolsData?.cuc ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CUP = ${controller.symbolsData?.cup ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CVE = ${controller.symbolsData?.cve ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "CZK = ${controller.symbolsData?.czk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "DJF = ${controller.symbolsData?.djf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "DKK = ${controller.symbolsData?.dkk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "DOP = ${controller.symbolsData?.dop ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "DZD = ${controller.symbolsData?.dzd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "EGP = ${controller.symbolsData?.egp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ERN = ${controller.symbolsData?.ern ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ETB = ${controller.symbolsData?.etb ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "EUR = ${controller.symbolsData?.eur ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "FJD = ${controller.symbolsData?.fjd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "FKP = ${controller.symbolsData?.fkp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GBP = ${controller.symbolsData?.gbp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GEL = ${controller.symbolsData?.gel ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GGL = ${controller.symbolsData?.ggp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GHS = ${controller.symbolsData?.ghs ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GIP = ${controller.symbolsData?.gip ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GMD = ${controller.symbolsData?.gmd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GNF = ${controller.symbolsData?.gnf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GTQ = ${controller.symbolsData?.gtq ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "GYD = ${controller.symbolsData?.gyd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "HKD = ${controller.symbolsData?.hkd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "HNL = ${controller.symbolsData?.hnl ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "HRK = ${controller.symbolsData?.hrk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "HTG = ${controller.symbolsData?.htg ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "HUF = ${controller.symbolsData?.huf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "IDR = ${controller.symbolsData?.idr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ILS = ${controller.symbolsData?.ils ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "IMP = ${controller.symbolsData?.imp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "INR = ${controller.symbolsData?.inr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "IQD = ${controller.symbolsData?.iqd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "IRR = ${controller.symbolsData?.irr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ISK = ${controller.symbolsData?.isk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ILS = ${controller.symbolsData?.ils ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "JEP = ${controller.symbolsData?.jep ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "JMD = ${controller.symbolsData?.jmd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "JOD = ${controller.symbolsData?.jod ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "JPY = ${controller.symbolsData?.jpy ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KES = ${controller.symbolsData?.kes ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KGS = ${controller.symbolsData?.kgs ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KHR = ${controller.symbolsData?.khr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KMF = ${controller.symbolsData?.kmf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KPW = ${controller.symbolsData?.kpw ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KRW = ${controller.symbolsData?.krw ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KWD = ${controller.symbolsData?.kwd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KYD = ${controller.symbolsData?.kyd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "KZD = ${controller.symbolsData?.kzt ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MAD = ${controller.symbolsData?.mad ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MDL = ${controller.symbolsData?.mdl ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MGA = ${controller.symbolsData?.mga ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MKD = ${controller.symbolsData?.mkd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MMK = ${controller.symbolsData?.mmk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MNT = ${controller.symbolsData?.mnt ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MOP = ${controller.symbolsData?.mop ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MUR = ${controller.symbolsData?.mur ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MVR = ${controller.symbolsData?.mvr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MWK = ${controller.symbolsData?.mwk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MXN = ${controller.symbolsData?.mxn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MYR = ${controller.symbolsData?.myr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "MZN = ${controller.symbolsData?.mzn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NAD = ${controller.symbolsData?.nad ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NGN = ${controller.symbolsData?.ngn ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NIO = ${controller.symbolsData?.nio ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NOK = ${controller.symbolsData?.nok ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NPR = ${controller.symbolsData?.npr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "NZD = ${controller.symbolsData?.nzd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "OMR = ${controller.symbolsData?.omr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PAB = ${controller.symbolsData?.pab ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PEN = ${controller.symbolsData?.pen ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PGK = ${controller.symbolsData?.pgk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PHP = ${controller.symbolsData?.php ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PKR = ${controller.symbolsData?.pkr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PLN = ${controller.symbolsData?.pln ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "PYG = ${controller.symbolsData?.pyg ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "QAR = ${controller.symbolsData?.qar ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "RON = ${controller.symbolsData?.ron ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "RSD = ${controller.symbolsData?.rsd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "RUB = ${controller.symbolsData?.rub ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "RWF = ${controller.symbolsData?.rwf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SAR = ${controller.symbolsData?.sar ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SBD = ${controller.symbolsData?.sbd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SCR = ${controller.symbolsData?.scr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SDG = ${controller.symbolsData?.sdg ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SEK = ${controller.symbolsData?.sek ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SGD = ${controller.symbolsData?.sgd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SHP = ${controller.symbolsData?.shp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SLL = ${controller.symbolsData?.sll ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SOS = ${controller.symbolsData?.sos ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SRD = ${controller.symbolsData?.srd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "STD = ${controller.symbolsData?.std ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SVC = ${controller.symbolsData?.svc ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SYP = ${controller.symbolsData?.syp ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "SZL = ${controller.symbolsData?.szl ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "THB = ${controller.symbolsData?.thb ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TJS = ${controller.symbolsData?.tjs ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TMT = ${controller.symbolsData?.tmt ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TND = ${controller.symbolsData?.tnd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TOP = ${controller.symbolsData?.top ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TRY = ${controller.symbolsData?.tryy ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TTD = ${controller.symbolsData?.ttd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "TZS = ${controller.symbolsData?.tzs ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "UAH = ${controller.symbolsData?.uah ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "UGX = ${controller.symbolsData?.ugx ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "USD = ${controller.symbolsData?.usd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "UYU = ${controller.symbolsData?.uyu ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "UZS = ${controller.symbolsData?.uzs ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "VEF = ${controller.symbolsData?.vef ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "VND = ${controller.symbolsData?.vnd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "VND = ${controller.symbolsData?.vuv ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XAF = ${controller.symbolsData?.xaf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XAG = ${controller.symbolsData?.xag ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XAU = ${controller.symbolsData?.xau ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XCD = ${controller.symbolsData?.xcd ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XDR = ${controller.symbolsData?.xdr ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XOF = ${controller.symbolsData?.xof ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "XPF = ${controller.symbolsData?.xpf ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ZAR = ${controller.symbolsData?.zar ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ZMK = ${controller.symbolsData?.zmk ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ZMW = ${controller.symbolsData?.zmw ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "ZWL = ${controller.symbolsData?.zwl ?? ""}",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
