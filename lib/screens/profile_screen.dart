import 'package:book_tickets/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(40)),
        children: [
          Gap(AppLayout.getHeight(30)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppLayout.getHeight(85),
                width: AppLayout.getHeight(85),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                  ),
                ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Sree Shivesh",
                        style: Styles.headLineStyle1),
                  Text("Coimbatore",
                        style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500,
                        )),
                  Gap(AppLayout.getHeight(6)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFF9800),
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical:AppLayout.getHeight(3)),
                    padding: EdgeInsets.only(left:AppLayout.getHeight(3),right: AppLayout.getHeight(7), top: AppLayout.getHeight(3), bottom: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white,size: 16,),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text ("Premium",
                        style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),
                    ),
                  )
                ],

              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,)
        ],

      ),
    );
  }
}
