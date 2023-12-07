import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    this.validation,
    required this.textInputType,
    required this.icon,
  });
  final TextInputType textInputType;
  final String hintText;
  final String? Function(String?)? validation;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      // textAlign: TextAlign.right,
      obscureText: false,
      decoration: InputDecoration(
          // suffixIcon:Icon(icon,color: Colors.purple),
          prefixIcon: Icon(icon, color: Colors.purple),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.purple),
          border: InputBorder.none),
      validator: validation,
    );
  }
}
