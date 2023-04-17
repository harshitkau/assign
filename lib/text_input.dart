import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  // final - Jab Aapko Pata ho ki ye ab change nahi hoga - const But Widgets/Methods Ke Liye
  final TextEditingController controller;
  final String myLabelText;
  final bool toHide;
  TextInputField({
    Key? key,
    required this.controller,
    required this.myLabelText,
    this.toHide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: toHide,
      controller: controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          fillColor: Colors.grey.withOpacity(0.3),
          filled: true,
          labelText: myLabelText,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          )),
    );
  }
}
