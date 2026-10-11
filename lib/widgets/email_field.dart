import 'package:flutter/material.dart';
import 'package:prj1/constants.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, this.title, this.hint});
  final String? title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'EMAIL ADDRESS',
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
            hintStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xffB4BCC3),
            ),
            hintText: hint ?? 'example@gmail.com',
          ),
        ),
      ],
    );
  }
}
