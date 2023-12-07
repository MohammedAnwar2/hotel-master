import 'package:flutter/material.dart';

class ValidationButton extends StatelessWidget {
  const ValidationButton({
    super.key,
    required this.formState,
  });

  final GlobalKey<FormState> formState;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      textColor: Colors.white,
      onPressed: () {
        if (formState.currentState!.validate()) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: new Text(
                  'تأكد من المدخلات',
                  textDirection: TextDirection.rtl,
                ),
                content: new Text("هل انت متأكد من جميع المدخلات",
                    textDirection: TextDirection.rtl),
                actions: <Widget>[
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: new Text('إلغاء')),
                  MaterialButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false, // Remove all routes
                        );
                      },
                      child: new Text('موافق')),
                ],
              );
            },
          );
        }
      },
      color: Colors.purple,
      child: const Text(
        "تأكيد",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
