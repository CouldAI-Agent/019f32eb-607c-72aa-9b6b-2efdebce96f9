import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/student_dashboard.dart';
import 'screens/teacher_dashboard.dart';
import 'screens/admin_dashboard.dart';
import 'screens/attendance_screen.dart';
import 'screens/result_screen.dart';
import 'screens/routine_screen.dart';
import 'screens/notice_screen.dart';
import 'screens/assignment_screen.dart';
import 'screens/teacher_attendance_screen.dart';
import 'screens/teacher_result_screen.dart';

void main() {
  runApp(const PolytechnicApp());
}

class PolytechnicApp extends StatelessWidget {
  const PolytechnicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polytechnic & University Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/dashboard': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as String?;
          final role = args ?? 'Student';
          if (role == 'Teacher') return const TeacherDashboard();
          if (role == 'Admin') return const AdminDashboard();
          return const StudentDashboard();
        },
        '/attendance': (context) => const AttendanceScreen(),
        '/result': (context) => const ResultScreen(),
        '/routine': (context) => const RoutineScreen(),
        '/notice': (context) => const NoticeScreen(),
        '/assignment': (context) => const AssignmentScreen(),
        '/teacher_attendance': (context) => const TeacherAttendanceScreen(),
        '/teacher_result': (context) => const TeacherResultScreen(),
      },
    );
  }
}
