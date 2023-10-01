import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:konversi/ui/constants/R/r.dart';
import 'text_dropdown_widget.dart';
import 'package:dropdown_plus/dropdown_plus.dart';

class KalogDropdown extends StatelessWidget {
  final List<KalogTextDropdownOption> options;
  final KalogTextDropdownOption? initialValue;
  final String? title;
  final String? hint;
  final void Function(KalogTextDropdownOption val)? onChanged;
  final EdgeInsets? padding;
  final bool enableBorder;
  final double borderWidth;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fieldColor;
  final bool focus;
  final DropdownEditingController<KalogTextDropdownOption>? controller;
  final bool isRequired;
  const KalogDropdown({
    Key? key,
    required this.options,
    this.initialValue,
    this.title,
    this.hint,
    this.onChanged,
    this.padding,
    this.enableBorder = true,
    this.borderWidth = 2,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.fieldColor,
    this.controller,
    this.focus = false,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Row(
            children: [
              Text(
                title!,
                style: Get.textTheme.subtitle1?.copyWith(
                  fontSize: 14.sp,
                  color: initialValue != null && focus
                      ? R.colors.blueColor
                      : R.colors.blackColor,
                ),
              ),
              if (isRequired)
                Padding(
                  padding: EdgeInsets.only(left: 5.0.w),
                  child: Text(
                    '*',
                    style: Get.textTheme.subtitle1
                        ?.copyWith(fontSize: 16.sp, color: R.colors.blueColor),
                  ),
                ),
            ],
          ),
        if (title != null)
          SizedBox(
            height: 6.h,
          ),
        Container(
          padding: padding == null && enableBorder
              ? EdgeInsets.only(left: 14.w, right: 20.w, top: 3.w, bottom: 3.w)
              : padding,
          decoration: BoxDecoration(
            color: fieldColor ?? R.colors.primaryColor,
            border: !enableBorder
                ? null
                : Border.all(
                    width: borderWidth,
                    color: initialValue != null && focus
                        ? Get.theme.primaryColor
                        : borderColor ?? R.colors.primaryColor
                  ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              if (prefixIcon != null) prefixIcon!,
              if (prefixIcon != null) SizedBox(width: 7.w),
              Expanded(
                child: KalogTextDropdownFormField(
                  options: options,
                  initialValue: initialValue,
                  hint: hint,
                  controller: controller,
                  onChanged: (item) {
                    KalogTextDropdownOption val = item;
                    if (onChanged != null) onChanged!(val);
                  },
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                  ),
                  dropdownHeight:
                      options.length < 5 ? options.length * 60 : 5 * 60,
                ),
              ),
              if (suffixIcon != null) SizedBox(width: 7.w),
              if (suffixIcon != null) suffixIcon!,
            ],
          ),
        ),
        if (!enableBorder)
          Container(
            height: 1,
            color: initialValue != null && focus
                ? Get.theme.primaryColor
                : R.colors.primaryColor,
          )
      ],
    );
  }
}
