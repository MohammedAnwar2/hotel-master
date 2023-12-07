import 'package:flutter/material.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  String dropdownValue = 'اليمن';
  var items = [
    'اليمن',
    'السعودية',
    'الاردن',
    'عمان',
    'مصر',
    'سوريا',
    'قطر',
    'الكويت',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: DropdownButton(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: const TextStyle(color: Colors.black),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
      ),
    );
  }
}
