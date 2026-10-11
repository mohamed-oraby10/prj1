import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/login_view.dart';
import 'package:prj1/widgets/email_field.dart';
import 'package:prj1/widgets/main_button.dart';
import 'package:prj1/widgets/password_field.dart';

class RegisterViewBody extends StatelessWidget {
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
          Center(
            child: SvgPicture.asset('assets/images/Startup life-pana 1.svg'),
          ),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Let’s get started',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kTitleText,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14),
          EmailField(title: 'NAME', hint: 'Example name'),
          SizedBox(height: 8),
          EmailField(),
          SizedBox(height: 8),
          PasswordField(),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
                checkColor: Colors.white,
                activeColor: kPrimaryColor,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'I agree to ',
                      style: TextStyle(
                        fontSize: 14,
                        color: kTitleText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'the Terms of Use & Privacy Policy',
                      style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          MainButton(text: 'SIGN UP', onTap: () {}),
          SizedBox(height: 8),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                children: [
                  Text(
                    'Already have an Account?',
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
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                    child: Text(
                      'Sign in',
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
          ),
        ],
      ),
    );
  }
}
