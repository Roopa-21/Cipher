import 'package:cipher_assignment/constants/colors.dart';
import 'package:cipher_assignment/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:cipher_assignment/models/coursecard.dart';

class CourseCard extends StatelessWidget {
  final Course courseCard;
  const CourseCard({super.key, required this.courseCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: kGrey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(children: [
          SizedBox(
            height: 150,
            child: Image.asset(courseCard.imageUrl.toString()),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 170, 138),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      courseCard.course,
                      style: const TextStyle(
                          color: Color.fromARGB(
                            255,
                            212,
                            97,
                            20,
                          ),
                          fontSize: 18),
                    ),
                  ),
                  Text(
                    courseCard.courseName,
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(courseCard.noOfVideos, style: const TextStyle(fontSize: 15)),
                  Text(courseCard.courseTime, style: const TextStyle(fontSize: 15)),
                  Text(courseCard.instructor, style: const TextStyle(fontSize: 15)),
                ]),
          )
        ]),
      ),
    );
  }
}
