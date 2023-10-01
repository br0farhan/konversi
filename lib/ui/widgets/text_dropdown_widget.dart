import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:konversi/ui/constants/R/r.dart';


/// Simple dorpdown whith plain text as a dropdown items.
class KalogTextDropdownFormField extends StatelessWidget {
  final List<KalogTextDropdownOption> options;
  final KalogTextDropdownOption? initialValue;
  final String? hint;
  final InputDecoration? decoration;
  final DropdownEditingController<KalogTextDropdownOption>? controller;
  final void Function(dynamic item)? onChanged;
  final void Function(KalogTextDropdownOption?)? onSaved;
  final String? Function(KalogTextDropdownOption?)? validator;
  final bool Function(KalogTextDropdownOption item, String str)? filterFn;
  final Future<List<KalogTextDropdownOption>> Function(String str)? findFn;
  final double? dropdownHeight;

  const KalogTextDropdownFormField({
    Key? key,
    required this.options,
    this.initialValue,
    this.decoration,
    this.onSaved,
    this.controller,
    this.onChanged,
    this.validator,
    this.findFn,
    this.filterFn,
    this.dropdownHeight,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownFormField<KalogTextDropdownOption>(
      decoration: decoration,
      onSaved: onSaved,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      dropdownHeight: dropdownHeight,
      displayItemFn: (dynamic item) {
        var newItem = item;
        newItem ??= initialValue;
        return Text(
          newItem == null ? hint ?? "" : newItem.text,
          style: Get.textTheme.headline6?.copyWith(
            fontSize: 14.sp,
            color: newItem == null ? R.colors.navbarColor : null,
          ),
        );
      },
      findFn: findFn ?? (dynamic str) async => options,
      filterFn: filterFn ??
          (dynamic item, str) =>
              item.text.toLowerCase().contains(str.toLowerCase()),
      dropdownItemFn: (dynamic item, position, focused, selected, onTap) =>
          ListTile(
        title: Text(
          item.text,
          style: TextStyle(color: selected ? Colors.blue : Colors.black87),
        ),
        tileColor:
            focused ? const Color.fromARGB(20, 0, 0, 0) : Colors.transparent,
        onTap: onTap,
      ),
    );
  }
}

class KalogTextDropdownOption {
  final String text;
  final dynamic value;

  KalogTextDropdownOption({required this.text, required this.value});
}
