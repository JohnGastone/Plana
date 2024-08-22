// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plana/Settings/themeprovider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context); // Get the current theme

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:
          themeProvider.themeMode, // Get the theme mode from the provider
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
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
              SizedBox(
                width: 45,
              ),
              Text(
                "Settings",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text(
                    themeProvider.themeMode == ThemeMode.dark
                        ? "Dark Mode"
                        : "Light Mode",
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Switch(
                      value: themeProvider.themeMode ==
                          ThemeMode
                              .dark, // Get the theme mode from the provider
                      activeColor: Color.fromARGB(255, 50, 48, 46),
                      onChanged: (bool value) {
                        themeProvider
                            .toggleTheme(); // Toggle theme in the provider
                      },
                    ),
                  ),
                ],
              ),
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
      ),
    );
  }
}
