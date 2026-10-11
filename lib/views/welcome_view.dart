import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/login_view.dart';
import 'package:prj1/views/register_view.dart';
import 'package:prj1/widgets/main_button.dart';

class WelcomeView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 131),
            Center(
              child: SvgPicture.asset('assets/images/Sign up-cuate 1.svg'),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kTitleText,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to the TaskEase world Where you will learn to use behavioral science to transform your life.',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: kDescText,
              ),
            ),
            SizedBox(height: 48),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xff909BA6), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
              child: Center(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/🦆 icon _google icon_.svg'),
                    SizedBox(width: 16),
                    Text(
                      'Continue with Google',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5E6E7E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(height: 1, color: const Color(0xffB4BCC3)),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff909BA6),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(height: 1, color: const Color(0xffB4BCC3)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterView()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff909BA6), width: 1),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 46,
                      ),
                      child: Text(
                        'SIGN UP',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E6E7E),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: MainButton(
                    text: 'SIGN IN',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
