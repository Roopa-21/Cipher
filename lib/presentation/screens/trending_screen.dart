import 'package:cipher_assignment/constants/constants.dart';
import 'package:cipher_assignment/models/coursecard.dart';
import 'package:cipher_assignment/widgets/courses_card.dart';
import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          title: const Text(
            'Trending Courses',
            style: style2,
          ),
          shadowColor: kGrey,
          backgroundColor: kSecondaryColor,
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.transparent,
          height: 300,
          width: double.infinity,
          child: Expanded(
            flex: 1,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Course.coursecards.length,
                itemBuilder: (context, index) {
                  return CourseCard(
                    courseCard: Course.coursecards[index],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
