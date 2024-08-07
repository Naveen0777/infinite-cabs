import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/forget_password.dart';
import 'package:infinite_cabs/home_screen.dart';
import 'package:infinite_cabs/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    'Login to your account',
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
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Incorrect Password. ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColor.bllack,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPassword()));
                        },
                        child: const Text(
                          'Reset your password.',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.orange,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
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
                        border: OutlineInputBorder(), labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // on Tap Function
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      height: 48.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.bllack,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 70.0,
                      ),
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColor.bllack,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          // on Tap Function
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          'Create new account',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.orange,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      const SizedBox(
                        height: 85.0,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'By logging in you are agree to ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.grey,
                            ),
                          ),
                          Text(
                            'Terms & conditions',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppColor.bllack,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
