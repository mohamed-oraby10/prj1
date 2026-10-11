import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/register_view.dart';
import 'package:prj1/widgets/email_field.dart';
import 'package:prj1/widgets/main_button.dart';
import 'package:prj1/widgets/password_field.dart';

class LoginViewBody extends StatelessWidget {
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
          SvgPicture.asset('assets/images/illustration-2.svg'),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Welcome Back!',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kTitleText,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              'Sign in to Continue',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kSecondText,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 24),
          EmailField(),
          SizedBox(height: 16),
          PasswordField(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: kPrimaryColor,
                  ),
                  Text(
                    'Remeber me',
                    style: TextStyle(
                      fontSize: 14,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 14,
                  color: kTitleText,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          MainButton(text: 'SIGN IN', onTap: () {}),
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
