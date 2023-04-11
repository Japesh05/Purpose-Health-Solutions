import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 48,
          index: index,
          backgroundColor: Appcolors.secondary,
          color: Appcolors.babyBlue,
          buttonBackgroundColor: Appcolors.dark,
          animationDuration: Duration(milliseconds: 400),
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            FaIcon(FontAwesomeIcons.compass,color: index == 0 ? Appcolors.secondary : Appcolors.dark),
            Icon(Icons.home,color: index == 1 ? Appcolors.secondary : Appcolors.dark),
            FaIcon(FontAwesomeIcons.squarePen,color: index == 2 ? Appcolors.secondary : Appcolors.dark),
          ]);
  }
}