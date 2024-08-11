// ignore_for_file: prefer_const_constructors

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
                    Icons.search,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
