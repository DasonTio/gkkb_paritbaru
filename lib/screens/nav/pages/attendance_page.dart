import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({ Key? key }) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Attendance'),
        ),
      ),
    );
  }
}