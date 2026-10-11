import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/widgets/main_button.dart';
import 'package:prj1/widgets/pin_email.dart';

class VerifyEmailViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          SizedBox(height: 4),
          SvgPicture.asset('assets/images/welcome bace with image.svg'),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Verify your email',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kTitleText,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Please check your emails for a message with your code. Your code is 4 number long.',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kDescText,
            ),
          ),
          SizedBox(height: 56),
          Center(child: PinEmail(onCompleted: (value) {})),
          SizedBox(height: 32),
          MainButton(text: 'VERIFY', onTap: () {}),
          SizedBox(height: 32),
          Center(
            child: Text(
              'Resend OTP',
              style: TextStyle(
                fontSize: 14,
                color: kTitleText,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
