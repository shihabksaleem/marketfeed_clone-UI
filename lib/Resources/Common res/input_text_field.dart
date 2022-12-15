import 'package:flutter/material.dart';

class InputTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  TextEditingController? controller = TextEditingController();

  InputTextFormFieldWidget({required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4266c7)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 13, color: Colors.grey)),
    );
  }
}
