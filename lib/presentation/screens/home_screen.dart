import 'package:cipher_assignment/constants/constants.dart';

import 'package:cipher_assignment/widgets/carousell_slider.dart';
import 'package:cipher_assignment/widgets/count_details.dart';
import 'package:cipher_assignment/widgets/description.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.barsStaggered,
                color: kBlack,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding:const  EdgeInsets.only(top: 50),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                              color: kBlack,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'the Future ',
                          style: TextStyle(
                              color: kOrange,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'of Learning!',
                          style: TextStyle(
                              color: kBlack,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                    ]))),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text:const  TextSpan(
                  children: [
                    TextSpan(
                        text: 'Start Learning by best creators for ',
                        style: TextStyle(
                            color: kBlack,
                            fontSize: 28,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: 'absolutely Free',
                        style: TextStyle(
                            color: kOrange,
                            fontSize: 28,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  '50+mentors',
                  style: TextStyle(
                      fontSize: 18, color: kBlack, fontWeight: FontWeight.bold),
                ),
               const  VerticalDivider(
                  width: 10,
                  color: kGrey,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '4.8/5',
                      style: TextStyle(
                          fontSize: 18,
                          color: kBlack,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(children: const  [
                      Icon(
                        Icons.star,
                        color: kOrange,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: kOrange,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: kOrange,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: kOrange,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_half_rounded,
                        color: kOrange,
                        size: 20,
                      )
                    ])
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: kOrange, borderRadius: BorderRadius.circular(20)),
              child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Text(
                      "Start Learning now ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          color: kSecondaryColor),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 25,
                      color: kSecondaryColor,
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
           const  SizedBox(
              height: 300,
              width: 400,
              child:  CarousellSlider(
                imgList: [img1, img2, img3, img4],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(children: [
              const Image(
                image: AssetImage(img5),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.of(context).push(Ma )
                },
                child: const Center(
                  child: Text(" For Students",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: kBlack,
                      )),
                ),
              ),
            ]),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Stack(children: const [
                Image(
                  image: AssetImage(img6),
                ),
                Text('For Creators',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: kBlack)),
              ]),
            ),
           const  SizedBox(
              height: 20,
            ),
            const CountDetails(),
            Container(
              color: kBlack,
              height: 200,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const  [
                    Text(
                      'Students LIVE Feedback',
                      style: TextStyle(
                          color: kOrange,
                          fontSize: 22,
                          fontWeight: FontWeight.w200),
                    ),
             Text(
                      'We love to read them',
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w200),
                    )
                  ]),
            ),
            const Description(),
          ],
        ),
      ),
    );
  }
}
