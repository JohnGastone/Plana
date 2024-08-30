// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlltasksPage extends StatefulWidget {
  const AlltasksPage({super.key});

  @override
  State<AlltasksPage> createState() => _AlltasksPageState();
}

class _AlltasksPageState extends State<AlltasksPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 228, 228),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    CupertinoIcons.back,
                    color: theme.brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            Text(
              "All Tasks",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 228, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  CupertinoIcons.search,
                  color: theme.brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
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
            ],
          ),
        ),
      ),
    );
  }
}
