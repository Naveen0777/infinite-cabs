import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/signup.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
          automaticallyImplyLeading: false,
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
                      'Forget Password',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: AppColor.bllack,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'Please enter your registered email address and you\'ll receive a link to reset your password.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusColor: AppColor.white,
                          border: OutlineInputBorder(),
                          labelText: "Email Password"),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        //on Tap Function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      },
                      child: Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.bllack,
                        ),
                        child: const Text(
                          "Submit",
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
