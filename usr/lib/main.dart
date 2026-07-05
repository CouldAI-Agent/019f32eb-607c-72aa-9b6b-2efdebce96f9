import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/result_screen.dart';
import 'screens/routine_screen.dart';
import 'screens/notice_screen.dart';
import 'screens/assignment_screen.dart';

void main() {
  runApp(const UniversityManagementApp());
}

class UniversityManagementApp extends StatelessWidget {
  const UniversityManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polytechnic & University Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/dashboard': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as String?;
          return DashboardScreen(role: args ?? 'Student');
        },
        '/attendance': (context) => const AttendanceScreen(),
        '/result': (context) => const ResultScreen(),
        '/routine': (context) => const RoutineScreen(),
        '/notice': (context) => const NoticeScreen(),
        '/assignment': (context) => const AssignmentScreen(),
      },
    );
  }
}
