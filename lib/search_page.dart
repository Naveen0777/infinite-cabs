import 'package:flutter/material.dart';
import 'package:infinite_cabs/app_colors.dart';
import 'package:infinite_cabs/search_results.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bg,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 112.0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'assets/images/back_btn_white@3x.png',
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0, top: 16.0),
                      child: Image.asset(
                        'assets/images/bridge@2x.png',
                        height: 94.0,
                        width: 17.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.circle_rounded,
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
                        const SizedBox(
                          height: 43.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchResults(),
                                ));
                          },
                          child: const Text(
                            'Saved address',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: AppColor.orange,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
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
                        ),
                      ],
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
