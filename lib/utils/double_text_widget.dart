import 'package:flutter/material.dart';

import 'app_styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleText({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text("Upcoming Flights",
            style: Styles.headLineStyle2),

        InkWell(   //Turn texts into clickable buttons.
          onTap: (){
          },
          child: Text("View all",
              //copyWith() is used to add to the Styles.<variables>
              style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor)),
        ),
      ],
    );
  }
}
