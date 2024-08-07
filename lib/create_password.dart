import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
                      'Create Password',
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
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusColor: AppColor.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter Password"),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Confirm Password"),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        //on Tap Function
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const SignupPage()));
                      },
                      child: Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.bllack,
                        ),
                        child: const Text(
                          "Next",
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
