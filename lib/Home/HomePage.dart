// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("./assets/amazed.jpeg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Kipwiru",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("04 Oct 2014",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.grey)),
                ],
              ),
              SizedBox(
                width: 100,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                    width: 320,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 27, 31, 69)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your today's task \n is almost done!",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 35,
                                width: 95,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor:
                                      Color.fromARGB(255, 95, 209, 211),
                                  child: Center(
                                    child: Text(
                                      "View Task",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 85.0),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Tasks",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 95, 209, 211),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Center(
                                child: Image.asset(
                                  "assets/ui.png",
                                  height: 20,
                                  width: 20,
                                  color: Color.fromARGB(255, 95, 209, 211),
                                ),
                              ),
                            ),
                            Text(
                              "User experience design",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: LinearProgressIndicator(
                                  value: 0.4, // Represents 40% progress
                                  backgroundColor: const Color.fromARGB(
                                      255,
                                      216,
                                      213,
                                      213), // Optional background color
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white), // Progress bar color
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Progress",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  "40%",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 205, 102, 61),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Center(
                                child: Image.asset(
                                  "assets/imed.png",
                                  height: 20,
                                  width: 20,
                                  color: Color.fromARGB(255, 205, 102, 61),
                                ),
                              ),
                            ),
                            Text(
                              "Meeting with designer",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: LinearProgressIndicator(
                                  value: 0.6, // Represents 40% progress
                                  backgroundColor: const Color.fromARGB(
                                      255,
                                      216,
                                      213,
                                      213), // Optional background color
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white), // Progress bar color
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Progress",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  "60%",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Tasks",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 250, 238, 238),
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
                              color: Color.fromARGB(255, 156, 229, 230),
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
                SizedBox(
                  height: 90,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
