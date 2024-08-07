import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/trips_page.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
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
                        border: InputBorder.none,
                        filled: true,
                        fillColor: AppColor.white,
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
                        hintText: 'Current Location'),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColor.white,
                        border: InputBorder.none,
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
                        hintText: 'Drop off'),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: AppColor.white,
                  width: double.infinity,
                  // height: onTapTextField == true ? 370.0 : 370.0,
                  height: 385.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 41.0, right: 36.0, top: 36.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Add notes for driver",
                            style: TextStyle(
                                color: AppColor.bllack, fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 7,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: AppColor.bg,
                              hintText: "Type your message here",
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //on Tap Function
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => const OtpScreen()));
                                },
                                child: Container(
                                  height: 48.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColor.bllack,
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 55.0),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //on Tap Function
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => const OtpScreen()));
                                },
                                child: Container(
                                  height: 48.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColor.orange,
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 45.0),
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
