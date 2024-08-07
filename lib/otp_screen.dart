import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infinite_cabs/create_password.dart';

import 'app_colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Verify Your Number',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: AppColor.bllack,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'Lorem Ipsum is +91 90231487642 text of the printing.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 48,
                            width: 60,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(hintText: "0"),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: 60,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(hintText: "0"),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: 60,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(hintText: "0"),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: 60,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(
                                hintText: "0",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        //on Tap Function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreatePassword()));
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 167.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200.0,
                          ),
                          Text(
                            'Didn\'t receive verification code?',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.bllack,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Resend Code.',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppColor.orange,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(
                            height: 85.0,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
