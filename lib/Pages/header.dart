// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class header extends StatelessWidget {
  final String heading;
  final icon;
  const header({super.key, required this.heading, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                // color: Colors.pink,
                  border: Border(
                      bottom: BorderSide(width: 2, color: Appcolors.grey))),
              child: Padding(
                padding: const EdgeInsets.only(bottom : 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    FaIcon(icon)
                  ],
                ),
              ),
            );
  }
}