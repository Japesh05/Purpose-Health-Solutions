import 'package:flutter/material.dart';
import 'package:purpose_health/colors.dart';

class details extends StatefulWidget {
  final String heading;
  final String text;
  const details({super.key, required this.heading, required this.text});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.heading,style: TextStyle(fontSize: 18),),
          Text(widget.text,style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}