// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purpose_health/Pages/details.dart';
import 'package:purpose_health/Pages/header.dart';
import 'package:purpose_health/colors.dart';

class sheet extends StatefulWidget {
  final double h;
  const sheet({super.key, required this.h});

  @override
  State<sheet> createState() => _sheetState();
}

class _sheetState extends State<sheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Appcolors.secondary,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      height: widget.h / 1.4,
      child: Padding(
        padding: const EdgeInsets.only(top: 125.0, left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // *
              header(
                  heading: 'Profile Settings',
                  icon: FontAwesomeIcons.penToSquare),
              details(
                heading: 'Phone No',
                text: '1234567890',
              ),
              details(
                heading: 'Email',
                text: 'allen@gmail.com',
              ),
              details(
                heading: 'Password',
                text: '. . . . .',
              ),
              header(heading: 'Insurance Details', icon: FontAwesomeIcons.lock),
              details(
                heading: 'Insurance Name',
                text: 'Allen',
              ),
              details(
                heading: 'Insurance Number',
                text: 'XXXXXXXXX',
              ),
              details(
                heading: 'Specialist Co-insurance',
                text: '5 XXX',
              ),
              details(
                heading: 'Primary Care Co-insurance',
                text: '5 XXX',
              ),
              header(heading: 'Account', icon: FontAwesomeIcons.penToSquare),
              details(
                heading: 'Notification',
                text: '-',
              ),
              details(
                heading: 'Age',
                text: '34',
              ),
              details(
                heading: 'Country',
                text: 'USA',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
