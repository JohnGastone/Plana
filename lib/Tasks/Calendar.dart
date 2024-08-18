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
  String _selectedTaskType = 'All'; // Add this line

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
                titleTextStyle:
                    GoogleFonts.poppins(fontSize: 20, color: Colors.white),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: GoogleFonts.poppins(color: Colors.white),
                weekendStyle: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                _buildTaskTypeSelector(),
                Expanded(
                  child: _buildTaskList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskTypeSelector() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTypeButton('All', _selectedTaskType == 'All'),
          _buildTypeButton('Ongoing', _selectedTaskType == 'Ongoing'),
          _buildTypeButton('Completed', _selectedTaskType == 'Completed'),
        ],
      ),
    );
  }

  Widget _buildTaskList() {
    switch (_selectedTaskType) {
      case 'All':
        return _buildAllTaskList();
      case 'Ongoing':
        return _buildOngoingTaskList();
      case 'Completed':
        return _buildCompletedTaskList();
      default:
        return _buildAllTaskList();
    }
  }

  Widget _buildTypeButton(String text, bool isSelected) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedTaskType = text;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.orange : Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _buildAllTaskList() {
    return ListView(
      children: [
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '1AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '11AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '11AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
      ],
    );
  }

  Widget _buildOngoingTaskList() {
    return ListView(
      children: [
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '11AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
      ],
    );
  }

  Widget _buildCompletedTaskList() {
    return ListView(
      children: [
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '1AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
        _buildTimelineItem(
          '02:00 PM',
          'Education app design',
          '02PM-03PM',
          Colors.purple,
          0.30,
          false,
        ),
        _buildTimelineItem(
          '09:00 AM',
          'Landing page design',
          '09AM-11AM',
          Colors.orange,
          1.0,
          true,
        ),
        _buildTimelineItem(
          '10:00 AM',
          'Dashboard redesign',
          '11AM-01PM',
          Colors.blue,
          0.59,
          false,
        ),
      ],
    );
  }

  Widget _buildTimelineItem(String startTime, String title, String duration,
      Color color, double progress, bool isCompleted) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 60,
          child: Text(startTime,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 250,
          height: 100,
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(isCompleted ? Icons.check_circle : Icons.access_time,
                      size: 16, color: color),
                  SizedBox(width: 5),
                  Text(duration,
                      style: GoogleFonts.poppins(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 5),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
              SizedBox(height: 5),
              Text('${(progress * 100).toInt()}%',
                  style: GoogleFonts.poppins(
                      color: color, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
