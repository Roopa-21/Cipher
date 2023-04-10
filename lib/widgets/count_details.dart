import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CountDetails extends StatelessWidget {
  const CountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Text('15K+', style: style1),
                Text('Students', style: style2),
                SizedBox(
                  height: 20,
                ),
                Text('450K+', style: style1),
                Text('Streamed minutes', style: style2),
                SizedBox(
                  height: 45,
                ),
                Text('50+', style: style1),
                Text('Creators', style: style2),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [
                Text('10K+', style: style1),
                Text('Certificates delivered', style: style2),
                SizedBox(
                  height: 20,
                ),
                Text('12TB+', style: style1),
                Text(
                  'Content streamed ',
                  style: style2,
                ),
                Text(
                  'in last 60 days',
                  style: style2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('110+', style: style1),
                Text('Programs available', style: style2),
              ],
            )
          ],
        ));
  }
}
