// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

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
            SizedBox(width: 50),
            Text(
              "My Calendar",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              calendarStyle: CalendarStyle(
                defaultTextStyle: GoogleFonts.poppins(color: Colors.white),
                weekendTextStyle: GoogleFonts.poppins(color: Colors.white),
                selectedDecoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: GoogleFonts.poppins(color: Colors.cyan),
                todayDecoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                todayTextStyle: GoogleFonts.poppins(color: Colors.white),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Colors.white),
                titleTextStyle: GoogleFonts.poppins(color: Colors.white),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: GoogleFonts.poppins(color: Colors.white),
                weekendStyle: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
          ),
          // Add your other widgets here
        ],
      ),
    );
  }
}
