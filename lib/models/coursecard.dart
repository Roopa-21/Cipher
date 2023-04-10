// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cipher_assignment/constants/constants.dart';
import 'package:equatable/equatable.dart';


class Course extends Equatable {
  final int id;
  final String imageUrl;
  final String course;
  final String courseName;
  final String noOfVideos;
  final String courseTime;
  final String instructor;
  
  const Course({required this.imageUrl, 
    required this.id,
    required this.course,
    required this.courseName,
    required this.noOfVideos,
    required this.courseTime,
    required this.instructor,
  });

  @override
  List<Object?> get props =>
      [course, courseName, noOfVideos, courseTime, instructor];
  static List<Course> coursecards = [
    const Course(
        id: 1,
        imageUrl: img11,
        course: 'Languify',
        courseName: 'FREE IELTS',
        noOfVideos: 'AI generated feedback...',
        courseTime: '30min',
        instructor: 'Languify'),
    const Course(
        id: 2,
        imageUrl: img12,

        course: 'WebDevelopment',
        courseName: 'JavaScript(JS)',
        noOfVideos: 'No. of videos:28',
        courseTime: '5.1hours',
        instructor: 'Shruthi Codes'),
    const Course(
        id: 3,
                imageUrl: img13,

        course: 'Programming',
        courseName: 'Complete Python..',
        noOfVideos: 'No. of videos:25',
        courseTime: '3.5 hours',
        instructor: 'Aditya Takur'),
    const Course(
        id: 4,
                imageUrl: img14,

        course: 'Programming',
        courseName: 'Competitive Programming',
        noOfVideos: 'No. of videos:21',
        courseTime: '3.0 hours',
        instructor: 'Shruthi Codes'),
    const Course(
        id: 5,
                imageUrl: img15,

        course: 'WebDevelopment',
        courseName: 'MySql',
        noOfVideos: 'No. of videos:21',
        courseTime: '2.5hours',
        instructor: 'Harshith Vashisth'),
    
  ];
}
