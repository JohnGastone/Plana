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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Description",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non mauris ac justo faucibus fermentum. Donec condimentum, metus et ultricies vulputate, mauris ex sodales neque, vel dignissim dolor velit nec purus. Sed facilisis neque vel massa semper, et mollis velit faucibus. Sed sed nisi vel nunc gravida consectetur.",
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Sub Task",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 137, 126, 126),
                      borderRadius: BorderRadius.circular(22)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 179, 210, 210),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/marketing.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Social Media Marketing",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "23 Oct 2024",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 85.0),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
