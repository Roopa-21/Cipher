
import 'package:cipher_assignment/constants/colors.dart';
import 'package:cipher_assignment/constants/images.dart';
import 'package:cipher_assignment/models/coursecard.dart';
import 'package:cipher_assignment/widgets/carousell_slider.dart';
import 'package:cipher_assignment/widgets/courses_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          shadowColor: kGrey,
          backgroundColor: kSecondaryColor,
          leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image(
              height: 10,
              width: 10,
              image: NetworkImage(
                  'https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png'),
            ),
          ),
          title: const Text(
            'CipherSchools',
            style: TextStyle(color: kBlack, fontWeight: FontWeight.bold),
          ),
          actions: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.compass,
                    color: kBlack,
                  ),
                ),
                const Text(
                  'Browse',
                  style: TextStyle(
                      color: kBlack, fontSize: 15, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.angleDown,
                    size: 15,
                    color: kBlack,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.bell,
                color: kBlack,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: kBlack,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
              width: double.infinity,
              child: CarousellSlider(
                imgList: [img9, img7, img10, img8],
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended Courses',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(60)),
                    child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Text(
                            "Popular ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w200,
                                color: kBlack),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.angleDown,
                              size: 15,
                              color: kBlack,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
