import 'package:flutter/material.dart';
import 'package:travel_planner_ui_sample/pages/trip_plan_page.dart';

void main() {
  runApp(const TravelPlanner());
}

class TravelPlanner extends StatelessWidget {
  const TravelPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TripPlanPage(),
    );
  }
}
