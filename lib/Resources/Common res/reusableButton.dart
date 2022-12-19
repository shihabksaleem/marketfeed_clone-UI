import 'package:day_1_dec_8/Resources/constants/constants.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  ReusableButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: kReusableButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
