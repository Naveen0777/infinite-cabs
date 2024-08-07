import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //onboading screen data list
  List onBoardingData = [
    {
      "image": 'assets/images/onboarding_1@2x.png',
      "title": 'Are you planning to visit Sydney, NSW, Australia.',
      "description":
          'We guarantee a safe, reliable, professional, affordable, and comfortable experience inside of our top-notch vehicles.',
    },
    {
      "image": 'assets/images/onboarding_2@2x.png',
      "title": 'We provide all kinds of taxi cab services.',
      "description":
          'like Airport Transfer, Platinum Service, Business Travel, Silver Taxi Service, Private Hire, Corporate Account, and so on.',
    },
  ];

//creating page controller
  PageController pageController = PageController();

  //Take user to LoginPage
  loginPage() {}

  //Page change method
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: onBoardingData.length,

              //Page Change Method
              onPageChanged: (int index) {
                setState(() {
                  currentpage = index;
                });
              },

              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        onBoardingData[index]['image'],
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      height: 34.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Text(
                        onBoardingData[index]['title'],
                        style: const TextStyle(
                            color: AppColor.bllack,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Text(
                        onBoardingData[index]['description'],
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 36.0, vertical: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //meaning of these 3 dots
                      //
                      //
                      ...List<Widget>.generate(onBoardingData.length, (index) {
                        return AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 200,
                          ),
                          height: 4.0,
                          width: (index == currentpage) ? 32 : 16,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == currentpage
                                ? AppColor.orange
                                : AppColor.grey),
                          ),
                        );
                      }),
                      const SizedBox(
                        width: 220,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/Group 63@2x.png',
                          height: 48.0,
                          width: 48.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
