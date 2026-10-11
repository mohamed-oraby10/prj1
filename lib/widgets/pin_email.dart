import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:prj1/constants.dart';

class PinEmail extends StatelessWidget {
  const PinEmail({super.key, required this.onCompleted});
  final ValueChanged<String> onCompleted;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      onCompleted: onCompleted,
      onChanged: (value) {
        // if (value.length == 4) {
        //   onCompleted(value);
        // }
      },
      length: 4,
      separatorBuilder: (index) => const SizedBox(width: 24),
      defaultPinTheme: PinTheme(
        textStyle: TextStyle(
          fontSize: 24,
          color: kTitleText,
          fontWeight: FontWeight.w600,
        ),
        width: 64,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      focusedPinTheme: PinTheme(
        textStyle: TextStyle(
          fontSize: 24,
          color: kTitleText,
          fontWeight: FontWeight.w600,
        ),
        width: 64,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      submittedPinTheme: PinTheme(
        textStyle: TextStyle(
          fontSize: 24,
          color: kTitleText,
          fontWeight: FontWeight.w600,
        ),
        width: 64,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
