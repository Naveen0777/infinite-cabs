import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/otp_screen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bg,
        appBar: AppBar(
          toolbarHeight: 112.0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Image.asset(
            'assets/images/login_top_bg@2x.png',
            fit: BoxFit.cover,
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'assets/images/back_btn_white@3x.png',
                fit: BoxFit.contain,
                // height: 20.0,
                // width: 20.0,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Create a new account',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: AppColor.bllack,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "First Name"),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Last Name"),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusColor: AppColor.white,
                          border: OutlineInputBorder(),
                          labelText: "Email address"),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Mobile Number"),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'assets/images/Icon awesome-check@2x.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        const Text(
                          'By click you accept the ',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppColor.grey,
                          ),
                        ),
                        const Text(
                          'Terms & conditions',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.bllack,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        //on Tap Function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                      child: Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.bllack,
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
