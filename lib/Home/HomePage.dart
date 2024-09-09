// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plana/Settings/Settings.dart';
import 'package:plana/Tasks/AllTasks.dart';
import 'package:plana/Tasks/Calendar.dart';
import 'package:plana/Tasks/NewTask.dart';

import '../../Tasks/TaskPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _progress = 0.0;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _progress += 0.05;
        if (_progress >= 0.95) {
          timer.cancel();
        }
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      switch (_selectedIndex) {
        case 0:
          Navigator.pushReplacement(
              context, CupertinoPageRoute(builder: (context) => HomePage()));
          break;
        case 1:
          Navigator.pushReplacement(
              context, CupertinoPageRoute(builder: (context) => MyCalendar()));
          break;
        case 2:
          Navigator.pushReplacement(
              context, CupertinoPageRoute(builder: (context) => HomePage()));
          break;
        case 3:
          Navigator.pushReplacement(context,
              CupertinoPageRoute(builder: (context) => SettingsPage()));
          break;
        default:
          break;
      }
    });
  }

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
        child: Stack(children: [
          SingleChildScrollView(
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
                                  "Your today's priority  \ntask is almost done!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 18),
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
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    value: _progress,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 95, 209, 211),
                                    ),
                                    strokeWidth: 5,
                                  ),
                                  Text(
                                    '${(_progress * 100).round()}%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 85.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    CupertinoIcons.pin,
                                    color: Colors.white,
                                  )),
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
                      InkWell(
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => AlltasksPage()));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
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
                                      value: 0.4,
                                      backgroundColor: const Color.fromARGB(
                                          255, 216, 213, 213),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => TaskPage()));
                        },
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
                                    value: 0.6,
                                    backgroundColor: const Color.fromARGB(
                                        255, 216, 213, 213),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      InkWell(
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => AlltasksPage()));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: Container(
                      height: 150,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 151, 197, 198),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Icon(Icons.more_vert)
                              ],
                            ),
                            Text(
                              "Financial Risk Analytics",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: LinearProgressIndicator(
                                  value: 0.45,
                                  backgroundColor:
                                      const Color.fromARGB(255, 216, 213, 213),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
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
                                  "45%",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => TaskPage()));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: Container(
                      height: 150,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 151, 197, 198),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Icon(Icons.more_vert)
                              ],
                            ),
                            Text(
                              "Python Pandas",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: LinearProgressIndicator(
                                  value: 0.65,
                                  backgroundColor:
                                      const Color.fromARGB(255, 216, 213, 213),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
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
                                  "65%",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => TaskPage()));
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 604),
            child: SizedBox(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Positioned(
                      top: -20,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 95, 209, 211),
                          child: FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => NewTask()));
                            },
                            child: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Set your desired background color here
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              20), // Optional, for rounded corners
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, -5),
                          ),
                        ],
                      ),
                      child: BottomNavigationBar(
                        currentIndex: _selectedIndex,
                        onTap: _onItemTapped,
                        selectedLabelStyle: GoogleFonts.poppins(),
                        unselectedLabelStyle: GoogleFonts.poppins(
                          color: Colors.grey,
                        ),
                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: Color.fromARGB(255, 95, 209, 211),
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.home),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.calendar),
                            label: 'Calendar',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.chart_bar),
                            label: 'Stats',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.settings),
                            label: 'Settings',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
