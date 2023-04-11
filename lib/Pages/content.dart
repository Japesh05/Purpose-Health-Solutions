// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:purpose_health/colors.dart';

class content extends StatefulWidget {
  const content({super.key});

  @override
  State<content> createState() => _contentState();
}

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top : 12.0 , left: 25,bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    // color: Colors.orangeAccent, //* color 
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 18, right: 18, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Text(
                            "ACMH Hospital",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Place name",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      //* possible sized box
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('⭐'),
                              Text('4.5 stars  '),
                              Text("\$ 400",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolors.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 2),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          shape: BoxShape.circle),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Icon(Icons.location_on_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      '4.3 KM',
                                      style: TextStyle(
                                          color: Appcolors.secondary,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right : w/(w-1),top: w/11),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Appcolors.secondary,
                      border: Border.all(width: 1,color: Appcolors.grey),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(spreadRadius: 0.1,blurRadius: 3)]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.call,
                        color: Colors.green,
                        fill: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
