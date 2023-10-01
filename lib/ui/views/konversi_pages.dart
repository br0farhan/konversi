import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konversi/logic/controllers/symbol_controller.dart';
import 'package:konversi/ui/constants/R/r.dart';
import 'package:konversi/ui/widgets/dropdown_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/text_dropdown_widget.dart';

class KonversiPages extends StatefulWidget {
  const KonversiPages({Key? key}) : super(key: key);

  @override
  State<KonversiPages> createState() => _KonversiPagesState();
}

class _KonversiPagesState extends State<KonversiPages> {
  var kursFrom = "usd";
  var kursTo = "aud";
  String converted = "0.0";
  double price = 0;
  TextEditingController amountController = TextEditingController(text: "0");
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.put(SymbolController()),
        builder: (SymbolController controller) {
          controller
              .getPrice(from: kursFrom, to: kursTo)
              .then((value) => price = value);
          amountController.addListener(() {
            converted = (price * (double.tryParse(amountController.text) ?? 0))
                .toStringAsFixed(1);
            controller.update();
          });
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
                        margin: const EdgeInsets.only(left: 71),
                        child: Text(
                          "KONVERSI",
                          style: TextStyle(
                              fontSize: 37.sp, color: R.colors.whiteColor),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 250,
                  child: KalogDropdown(
                    onChanged: (val) async {
                      kursFrom = val.value;
                      price =
                          await controller.getPrice(from: kursFrom, to: kursTo);
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
                ),
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.keyboard_double_arrow_down,
                  size: 25,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: KalogDropdown(
                    onChanged: (val) async {
                      kursTo = val.value;
                      price =
                          await controller.getPrice(from: kursFrom, to: kursTo);
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
                      text: "AUD - Australian Stated Dolar",
                      value: "AUD",
                    ),
                    fieldColor: R.colors.whiteColor,
                    borderColor: R.colors.primaryColor,
                    hint: "Pilih Mata Uang Kurs",
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: R.colors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              "Masukan Angka",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 125.w,
                              height: 35.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: R.colors.primaryColor, width: 2),
                                  borderRadius: BorderRadius.circular(4.r)),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: amountController,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                converted,
                                style: TextStyle(fontSize: 28.sp, color: Colors.red),
                              ),
                              Container(
                                color: R.colors.blackColor,
                                height: 3.w,
                                width: 93.w,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
          );
        });
  }
}
