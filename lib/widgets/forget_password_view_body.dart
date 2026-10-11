import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/register_view.dart';
import 'package:prj1/views/verify_email_view.dart';
import 'package:prj1/widgets/main_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          SvgPicture.asset('assets/images/illustration-3.svg'),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Forgot your password',
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
            'Don’t worry enter your registered email id  to receive a OTP code and apply it in verification. Then you can easily login.',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kDescText,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),
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
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
                child: SvgPicture.asset('assets/images/mdi_gmail.svg'),
              ),
              hintStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xffB4BCC3),
              ),
              hintText: 'example@gmail.com',
            ),
          ),

          SizedBox(height: 24),
          MainButton(
            text: 'SEND',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VerifyEmailView()),
              );
            },
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: Row(
              children: [
                Text(
                  'Don’t have an Account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: kTitleText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterView()),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff23CF48),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
