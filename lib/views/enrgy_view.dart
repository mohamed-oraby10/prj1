import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/widgets/main_button.dart';

class EnrgyView extends StatefulWidget {
  const new({super.key});

  @override
  State<EnrgyView> createState() => _EnrgyViewState();
}

class _EnrgyViewState extends State<EnrgyView> {
  List<String> items = [
    "High - Energized all day",
    "Medium - Bursts of energy",
    "Low - Energy fades all day",
  ];
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
            Text(
              'What is your energy level?',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: kTitleText,
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (context, index) {
                      final isSelected = selectedIndex == index;

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 33,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(4, 4),
                                  blurRadius: 4,
                                  color: Colors.black.withOpacity(0.25),
                                ),
                              ],
                              border: Border.all(
                                width: 2,
                                color: isSelected
                                    ? kTitleText
                                    : const Color(0xff5E6E7E),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    items[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5E6E7E),
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  isSelected
                                      ? 'assets/images/btn-1 (1).svg'
                                      : 'assets/images/btn-1.svg',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24),
                  MainButton(text: 'WELCOME', onTap: () {}),
                  SizedBox(height: 32),
                  SvgPicture.asset(
                    'assets/images/Finish line-pana 1.svg',
                    height: 250,
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
