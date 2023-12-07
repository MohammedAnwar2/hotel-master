import 'package:flutter/material.dart';

class MethodToPay extends StatefulWidget {
  const MethodToPay({super.key});

  @override
  State<MethodToPay> createState() => _MethodToPayState();
}

class _MethodToPayState extends State<MethodToPay> {
  String payment = "نقدا";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("عبر النت"),
              value: "عبر النت",
              groupValue: payment,
              onChanged: (val) {
                setState(() {
                  payment = val!;
                });
              }),
          RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("نقدا"),
              value: "نقدا",
              groupValue: payment,
              onChanged: (val) {
                setState(() {
                  payment = val!;
                });
              }),
        ],
      ),
    );
  }
}
