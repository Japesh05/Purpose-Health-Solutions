// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purpose_health/Pages/bottom_navigation.dart';

import '../colors.dart';
import 'sheet.dart';

class details_page extends StatefulWidget {
  const details_page({super.key});

  @override
  State<details_page> createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: h / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'android/assets/dp.avif'),
                        fit: BoxFit.cover)),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(CupertinoIcons.back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Appcolors.secondary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              color: Appcolors.secondary,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  CupertinoIcons.brightness,
                                  color: Appcolors.primary,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(alignment: Alignment.bottomCenter, child: sheet(h: h)),
              Positioned(
                  top: (h * 1.33 - h) / 1.4,
                  left: 20,
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Appcolors.primary),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'android/assets/dp.avif'),
                        radius: 50,
                      ))),
              Positioned(
                top: (h * 1.41 - h) / 1.4,
                left: w / 2.6,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'AJ. ALLEN ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          FaIcon(
                            FontAwesomeIcons.circleCheck,
                            color: Appcolors.primary,
                          )
                        ],
                      ),
                      Text('30.05.1996',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Appcolors.primary,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 7),
                            child: Text(
                              'Female',
                              style: TextStyle(
                                  color: Appcolors.secondary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: bottom_navigation(),
    );
  }
}
