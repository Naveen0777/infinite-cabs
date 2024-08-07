import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
            width: 150.0,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/contact_active@2x.png',
                ),
                Text('Contact'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
