// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purpose_health/Pages/bottom_navigation.dart';
import 'package:purpose_health/Pages/content.dart';
import 'package:purpose_health/Pages/details_page.dart';
import 'package:purpose_health/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _controller = TextEditingController();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Appcolors.secondary,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Card(
              color: Appcolors.secondary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.contacts,
                  color: Appcolors.primary,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => details_page(),
                            ));
                      },
                      child: Container(
                        width: 60,
                        height: 70,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Appcolors.primary),
                            image: DecorationImage(
                                image: AssetImage(
                                    'android/assets/dp.avif'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(spreadRadius: 0.1, blurRadius: 2)
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Appcolors.primary)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '👋',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Hey',
                                    style: TextStyle(
                                        color: Appcolors.primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                  TextSpan(
                                      text: ' Allen',
                                      style: TextStyle(
                                          color: Appcolors.dark,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))
                                ])),
                            Text(
                              'St. Los Angeles LA',
                              style: TextStyle(fontSize: 9),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: CupertinoSearchTextField(
                        placeholder: "Physician",
                        controller: _controller,
                        style: TextStyle(color: Colors.grey.shade700),
                        onSubmitted: (value) {},
                        prefixIcon: Icon(
                          Icons.search,
                          fill: 1,
                          size: 35,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.mic),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  ButtonsTabBar(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    backgroundColor: Appcolors.primary,
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Appcolors.secondary),
                    unselectedBackgroundColor: Appcolors.secondary,
                    unselectedLabelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Appcolors.dark),
                    tabs: [Tab(text: 'Doctors'), Tab(text: 'Hospitals')],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.25,
                      decoration: BoxDecoration(
                          // color: Colors.lightGreenAccent, //* color
                          border: Border.all(width: 1, color: Appcolors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: TabBarView(
                        children: [content(), content()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'android/assets/map.avif'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.expand,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Appcolors.grey,
                            border:
                                Border.all(width: 1, color: Appcolors.primary)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Appcolors.secondary,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(spreadRadius: 0.2, blurRadius: 2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.chat,
                          color: Appcolors.primary,
                          fill: 0.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      //! bottom navigation bar
      bottomNavigationBar: bottom_navigation(),
    );
  }
}
