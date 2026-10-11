import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';

class PasswordField extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PASSWORD',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: kSecondText,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1, color: Color(0xff909BA6)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1, color: Color(0xff909BA6)),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
              child: SvgPicture.asset('assets/images/mdi_eye.svg'),
            ),
            hintStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xffB4BCC3),
            ),
            hintText: 'password',
          ),
        ),
      ],
    );
  }
}
