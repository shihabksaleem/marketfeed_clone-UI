// ignore_for_file: use_key_in_widget_constructors

import 'package:day_1_dec_8/screens/screen_home.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'DropDownButton.dart';
import 'input_text_field.dart';
import 'reusableButton.dart';

class ReusableBottomContainer extends StatefulWidget {
  @override
  State<ReusableBottomContainer> createState() =>
      _ReusableBottomContainerState();
}

class _ReusableBottomContainerState extends State<ReusableBottomContainer> {
  // for displaying mobile number contents
  bool? mobileNumberDisplay = true;
  //to switch between button get otp and continue button
  bool button1 = true;
  bool button2 = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          color: kSetupcontainercolor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mobileNumberDisplay == true
              ? const Text(
                  'Login with Mobile Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              : const Text(
                  'Setup Your Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
          const SizedBox(height: 5),
          Text(
            'All your stock market needs in one place',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
          ),
          const SizedBox(height: 25),
          mobileNumberDisplay == true
              ? Text(
                  'Mobile Number',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
                )
              : const SizedBox(),
          mobileNumberDisplay == true
              ? Row(
                  children: [
                    const CustomDropDownButton(),
                    Expanded(
                        child: InputTextFormFieldWidget(
                            hintText: 'Enter Mobile Number')),
                  ],
                )
              : Column(
                  children: [
                    InputTextFormFieldWidget(
                        hintText: ('Full Name'),
                        controller: fullNameController),
                    const SizedBox(height: 15),
                    InputTextFormFieldWidget(
                        hintText: 'Email Address', controller: emailController)
                  ],
                ),
          const SizedBox(height: 20),
          button1 == true
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ReusableButton(
                    buttonText: 'Get OTP',
                    onPressed: () {
                      setState(() {
                        button1 = !button1;
                        mobileNumberDisplay = false;
                      });
                    },
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ReusableButton(
                    buttonText: 'Continue',
                    onPressed: () {
                      if (fullNameController.text == '' &&
                          emailController.text == '') {
                        Navigator.pushReplacementNamed(context, ScreenHome.id);
                      } else {
                        print('login failed');
                      }
                    },
                  ),
                )
        ],
      ),
    );
  }
}
