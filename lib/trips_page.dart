import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/home_screen.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColor.bg,
            appBar: AppBar(
              toolbarHeight: 112.0,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const Text(
                'Trips',
                style: TextStyle(
                    color: AppColor.bllack,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
              leading: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    'assets/images/humburger_icon@3x.png',
                    fit: BoxFit.contain,
                    // height: 20.0,
                    // width: 20.0,
                  ),
                ),
              ),
              // bottom: const TabBar(tabs:
              // Tab(text: 'Scheduled'),),
            ),
            body: DefaultTabController(
              length: 3,
              animationDuration: const Duration(milliseconds: 3000),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 102.0,
                        ),
                        child: Image.asset(
                          'assets/images/trip_no_found_vector@2x.png',
                          fit: BoxFit.contain,
                          height: 105.0,
                          width: 190.0,
                        ),
                      ),
                      const SizedBox(
                        height: 44.0,
                      ),
                      const Text(
                        'Not Found',
                        style: TextStyle(
                            color: AppColor.bllack,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 11.0,
                      ),
                      const Text(
                        'You have no upcoming rides.',
                        style: TextStyle(
                          color: AppColor.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 41.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.orange,
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen())),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "Ride with us",
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: const TabBar(
              labelColor: AppColor.bllack,
              unselectedLabelColor: AppColor.grey,
              indicator: UnderlineTabIndicator(
                insets: EdgeInsets.only(bottom: 50.0),
                borderSide: BorderSide(color: AppColor.orange, width: 2.0),
              ),
              tabs: [
                Tab(
                  text: 'Scheduled',
                ),
                Tab(
                  text: 'Completed',
                ),
                Tab(
                  text: 'Cancelled',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
