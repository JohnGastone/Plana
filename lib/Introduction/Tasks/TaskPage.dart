// ignore_for_file: prefer_const_constructors

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
                height: 30,
                width: 30,
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
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
