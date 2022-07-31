import 'package:flutter/material.dart';
import 'package:my_fitness/screens/screens.home/components/custom_app_bar.dart';
import 'package:my_fitness/screens/screens.home/components/diff_styles.dart';
import 'package:my_fitness/screens/screens.home/components/list_courses.dart';

import '../../constants/constants.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(top: appPadding * 2),
        child: Column(
          children: const [
            CustomAppBar(),
            DiffStyles(),
            ListCourses(),
          ],
        ),
      ),


    );
  }
}
