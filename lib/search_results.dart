import 'package:flutter/material.dart';
import 'package:infinite_cabs/add_notes.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/trips_page.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  bool onTapTextField = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 145.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/home_active@2x.png',
                  // height: 49.0,
                  // width: 48.0,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  'Home',
                  style: TextStyle(color: AppColor.bllack, fontSize: 14.0),
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
            Image.asset('assets/images/map_bg.png',
                height: 500.0, width: 420.0, fit: BoxFit.cover),
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
              padding:
                  const EdgeInsets.only(left: 94.0, top: 48.0, right: 36.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.circle,
                              color: AppColor.orange,
                            ),
                            iconSize: 14.0,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Current Location'),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.square,
                              color: AppColor.orange,
                            ),
                            iconSize: 14.0,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Drop off'),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/pull_up_arrow@2x.png',
              height: 48.0,
              width: 48.0,
              fit: BoxFit.contain,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: AppColor.white,
                  width: double.infinity,
                  // height: onTapTextField == true ? 370.0 : 370.0,
                  height: 427.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 36.0, right: 36.0, top: 35.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "You will reach by 12:44 PM",
                            style:
                                TextStyle(color: AppColor.grey, fontSize: 13.0),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/firsr_available@2x.png',
                                    height: 53.0,
                                    width: 95.0,
                                    fit: BoxFit.contain,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'First Available',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: AppColor.bllack,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          '4 Seater',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: AppColor.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Image.asset(
                                      'assets/images/lock_icon@2x.png',
                                      height: 16.0,
                                      width: 12.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12.0,
                                  ),
                                  const Text(
                                    '\$64',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: AppColor.orange,
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   height: 69.0,
                              //   decoration: BoxDecoration(
                              //     color: AppColor.container,
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 8.0,
                              // ),
                              // Container(
                              //   height: 69.0,
                              //   decoration: BoxDecoration(
                              //     color: AppColor.container,
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/sedan@2x.png',
                                      height: 53.0,
                                      width: 95.0,
                                      fit: BoxFit.contain,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sedan',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: AppColor.bllack,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            '4 Seater',
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              color: AppColor.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 120.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/lock_icon@2x.png',
                                            height: 16.0,
                                            width: 12.0,
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(
                                            width: 12.0,
                                          ),
                                          const Text(
                                            '\$45',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: AppColor.orange,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 42.0,
                              ),
                              const Text(
                                'Payment',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: AppColor.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 11.0,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'xxxx xxxx 4793',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: AppColor.bllack,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 21.0,
                                  ),
                                  const Text(
                                    'change',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: AppColor.orange,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 98.0,
                                  ),
                                  Image.asset(
                                    'assets/images/schedule_icon@2x.png',
                                    width: 14.0,
                                    height: 13.0,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    width: 12.0,
                                  ),
                                  const Text(
                                    'Schedule',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: AppColor.bllack,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddNotes()));
                                },
                                child: Container(
                                  height: 48.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColor.bllack,
                                  ),
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
