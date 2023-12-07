// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled2/widgets/rent_widget/methodToPay.dart';
import 'package:untitled2/widgets/rent_widget/selectCountry.dart';
import 'package:untitled2/widgets/rent_widget/validationButton.dart';
import 'package:untitled2/widgets/rent_widget/personal_Info.dart';

class RentScreen extends StatelessWidget {
  RentScreen({super.key});

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ListView(
      padding: EdgeInsetsDirectional.zero,
      children: [
        Container(
          margin: const EdgeInsetsDirectional.only(bottom: 16),
          height: height / 2,
          decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              )),
          child: Stack(
            children: [
              Image.asset(
                "assets/a1.png",
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: height / 2.3,
                  left: width / 4,
                  child: const Text(
                    "بيتك علينا وين ما رحت",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
        ),
        Personal_Info(
          formState: formState,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "طريقة الدفع",
            style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w400,
                fontSize: 23),
            textAlign: TextAlign.end,
          ),
        ),
        const MethodToPay(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "اختر دولتك",
            style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w400,
                fontSize: 23),
            textAlign: TextAlign.end,
          ),
        ),
        const SelectCountry(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ValidationButton(formState: formState),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }
}
