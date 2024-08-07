import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/search_page.dart';
import 'package:infinite_cabs/trips_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool onTapTextField = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 145.0,
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 100.0,
                  child: Image.asset(
                    'assets/images/home_active@2x.png',
                    // height: 49.0,
                    // width: 48.0,
                    fit: BoxFit.cover,
                  ),
                ),
                // const SizedBox(
                //   height: 16.0,
                // ),
                const Text(
                  'Home',
                  style: TextStyle(
                    color: AppColor.bllack,
                    fontSize: 14.0,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TripsPage()));
                  },
                  child: Image.asset(
                    'assets/images/trips_inactve@2x.png',
                    // height: 49.0,
                    // width: 48.0,
                    fit: BoxFit.contain,
                  ),
                ),

                const Text(
                  'Trips',
                  style: TextStyle(color: AppColor.grey, fontSize: 14.0),
                ),

                Image.asset(
                  'assets/images/setting_inactive@2x.png',
                  // height: 49.0,
                  // width: 48.0,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(
                //   height: 16.0,
                // ),
                const Text(
                  'Settings',
                  style: TextStyle(color: AppColor.grey, fontSize: 14.0),
                ),

                Image.asset(
                  'assets/images/promo_inactive@2x.png',
                  // height: 49.0,
                  // width: 48.0,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(
                //   height: 16.0,
                // ),
                const Text(
                  'Promo\'s',
                  style: TextStyle(color: AppColor.grey, fontSize: 14.0),
                ),
                Image.asset(
                  'assets/images/legal_inactive@2x.png',
                  fit: BoxFit.cover,
                ),
                // const SizedBox(
                //   height: 16.0,
                // ),
                const Text(
                  'Legal',
                  style: TextStyle(color: AppColor.grey, fontSize: 14.0),
                ),
                Image.asset(
                  'assets/images/contact_inactive@2x.png',
                  fit: BoxFit.cover,
                ),
                // const SizedBox(
                //   height: 16.0,
                // ),
                const Text(
                  'Contact',
                  style: TextStyle(color: AppColor.grey, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Image.asset('assets/images/map_bg.png',
                  // height: 800.0,
                  // width: 300.0,
                  fit: BoxFit.contain),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0, top: 48.0),
              child: Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Image.asset(
                    'assets/images/humburger_icon@2x.png',
                    height: 42.0,
                    width: 42.0,
                    fit: BoxFit.contain,
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 205.0, top: 200.0),
              child: Image.asset(
                'assets/images/pin.png',
                height: 52.0,
                width: 30.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270.0, top: 180.0),
              child: Image.asset(
                'assets/images/car_top.png',
                height: 68.0,
                width: 68.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, top: 365.0),
              child: Image.asset(
                'assets/images/car_left.png',
                height: 68.0,
                width: 68.0,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 10000),
                  color: AppColor.white,
                  width: double.infinity,
                  // height: onTapTextField == true ? 370.0 : 370.0,
                  height: 370.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 36.0, right: 36.0, top: 36.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi James!",
                            style: TextStyle(
                                color: AppColor.orange, fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text(
                            "Where do you want to go?",
                            style: TextStyle(
                              color: AppColor.bllack,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          TextFormField(
                            onTap: () {
                              // setState(() {
                              //   onTapTextField = true;
                              // });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SearchPage(),
                                  ));
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Destination",
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: AppColor.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 13.0,
                              ),
                              Expanded(
                                child: Text(
                                  "William Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek, William Cree…",
                                  style: TextStyle(
                                    color: AppColor.bllack,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Divider(
                            thickness: 1.0,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Work",
                                style: TextStyle(
                                    color: AppColor.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 13.0,
                              ),
                              Expanded(
                                child: Text(
                                  "William Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek, William Cree…",
                                  style: TextStyle(
                                    color: AppColor.bllack,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Divider(
                            thickness: 1.0,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Office",
                                style: TextStyle(
                                    color: AppColor.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 13.0,
                              ),
                              Expanded(
                                child: Text(
                                  "William Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek, William Cree…",
                                  style: TextStyle(
                                    color: AppColor.bllack,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
