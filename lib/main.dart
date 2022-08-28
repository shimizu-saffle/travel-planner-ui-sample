import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_planner_ui_sample/pages/trip_plan_page.dart';
import 'package:travel_planner_ui_sample/utils/constants.dart';

void main() {
  runApp(const TravelPlanner());
}

class TravelPlanner extends StatelessWidget {
  const TravelPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TripPlanPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
      ),
    );
  }
}
