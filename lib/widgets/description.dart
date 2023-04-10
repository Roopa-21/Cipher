import 'package:cipher_assignment/constants/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Center(
            child: RichText(
              text: TextSpan(children: [
                WidgetSpan(
                    child: Image.network(
                  'https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png',
                  height: 40,
                  width: 40,
                  alignment: Alignment.topLeft,
                )),
                const TextSpan(text: ' CipherSchools', style: style2)
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Cipherschools is a bootstrapped educational video streaming platform in India that ,is connectingpassionate unskilled students to skilled industry experts to fulfill their career dreams.',
          style: style2.copyWith(fontWeight: FontWeight.w300),
        ),
      ]),
    );
  }
}
