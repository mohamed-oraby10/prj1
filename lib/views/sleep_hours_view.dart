import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/views/enrgy_view.dart';
import 'package:prj1/widgets/main_button.dart';

class SleepHoursView extends StatefulWidget {
  const new({super.key});

  @override
  State<SleepHoursView> createState() => _SleepHoursViewState();
}

class _SleepHoursViewState extends State<SleepHoursView> {
  List<String> items = ["7 hours or less", "7-9 hours", "9-12 hours / More"];
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            SizedBox(height: 24),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'How many hours do you sleep?',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: kTitleText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final isSelected = selectedIndex == index;

                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 16,
                          left: 51,
                          right: 51,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: isSelected ? 2.6 : 1.6,
                                color: isSelected
                                    ? kPrimaryColor
                                    : const Color(0xff5E6E7E),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? kTitleText
                                      : const Color(0xff5E6E7E),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    child: MainButton(
                      text: 'NEXT',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EnrgyView()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 56),
                  SvgPicture.asset(
                    'assets/images/Late at night-pana 1.svg',
                    height: 260,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
