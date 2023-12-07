import 'package:flutter/material.dart';
import 'package:untitled2/widgets/rent_widget/customFormField.dart';

class Personal_Info extends StatelessWidget {
  const Personal_Info({super.key, required this.formState});

  final GlobalKey<FormState> formState;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Form(
        key: formState,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomFormField(
              hintText: "الأسم",
              textInputType: TextInputType.name,
              icon: Icons.person,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'يرجى ادخال الأسم ';
                } else {
                  return null;
                }
              },
            ),
            CustomFormField(
              hintText: "اسم الجوال",
              textInputType: TextInputType.number,
              icon: Icons.phone,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'يرجى ادخال رقم الجوال';
                } else {
                  return null;
                }
              },
            ),
            CustomFormField(
              hintText: "البريد الإلكتروني",
              textInputType: TextInputType.emailAddress,
              icon: Icons.email,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'يرجى ادخال البريد الإلكتروني ';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
