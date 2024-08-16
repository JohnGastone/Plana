// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 228, 228),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(CupertinoIcons.back),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              "Task Details",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "User Experience Design",
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 233, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          "18-08-2024",
                          style: GoogleFonts.poppins(
                              fontSize: 19, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 233, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          "9:00 AM - 12:00 PM",
                          style: GoogleFonts.poppins(
                              fontSize: 19, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    // Here pie chart from fl_charts
                    SizedBox(
                      height: 200, // Adjust height as necessary
                      width: 200, // Adjust width as necessary
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: Color.fromARGB(255, 95, 209, 211),
                              value: 40,
                              title: '40%',
                              radius: 50,
                              titleStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            PieChartSectionData(
                              color: Color.fromARGB(255, 205, 102, 61),
                              value: 30,
                              title: '30%',
                              radius: 50,
                              titleStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            PieChartSectionData(
                              color: Color.fromARGB(255, 96, 20, 190),
                              value: 30,
                              title: '30%',
                              radius: 50,
                              titleStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    Color.fromARGB(255, 95, 209, 211),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Finish on time",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    Color.fromARGB(255, 205, 102, 61),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Past the deadline",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    Color.fromARGB(255, 96, 20, 190),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Still ongoing",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
