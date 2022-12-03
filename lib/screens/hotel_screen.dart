import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 3,
            blurRadius: 12,
          )
        ],
      ),
      margin: const EdgeInsets.only(right: 15), //Spacing between the containers of the home screen.
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15), //Spacing inside the container between container and the image
      width: size.width * 0.6,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //This container contains the images
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/one.png"
                )
              )
            ),

          ),
          const Gap(10),
          Text("Open Space",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text("London",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(15),
          Text("\$40/Night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),

        ],
      ),
    );
  }
}
