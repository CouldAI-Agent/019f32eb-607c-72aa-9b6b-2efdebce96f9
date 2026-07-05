import 'package:flutter/material.dart';
import 'attendance_screen.dart';
import 'result_screen.dart';
import 'routine_screen.dart';
import 'notice_screen.dart';
import 'assignment_screen.dart';

class DashboardScreen extends StatelessWidget {
  final String role;

  const DashboardScreen({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard - $role'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
          return GridView.count(
            padding: const EdgeInsets.all(16.0),
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              _buildCard(context, 'Attendance', Icons.fact_check, '/attendance'),
              _buildCard(context, 'Result', Icons.grade, '/result'),
              _buildCard(context, 'Routine', Icons.schedule, '/routine'),
              _buildCard(context, 'Notice', Icons.notifications, '/notice'),
              _buildCard(context, 'Assignment', Icons.assignment, '/assignment'),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, IconData icon, String route) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: Theme.of(context).primaryColor),
            const SizedBox(height: 8.0),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
