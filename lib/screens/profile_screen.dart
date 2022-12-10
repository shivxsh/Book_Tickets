import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/column_layout.dart';
import 'package:book_tickets/utils/layout_builder_widget.dart';
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
          Gap(AppLayout.getHeight(30)),
          //Divider(color: Colors.grey.shade300,),
          //Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                    //color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 20, color: Color(0xFF264CD2))
                ),
              ),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child:  Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've got a new award!",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("You've had 95 flights in a year.",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9), fontSize: 16),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Text("Total Miles",
            style: Styles.headLineStyle2.copyWith(fontSize: 27),),
          Gap(AppLayout.getHeight(15)),
          Container(
            child: Column(
              children: [
                Text("192802",
                style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w600, color: Styles.textColor,
                ),),
                Gap(AppLayout.getHeight(35)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles Collected",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16)
                      ),
                    Text("11 June 2022",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16)
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Divider(
                  height: AppLayout.getHeight(20),
                  color: Colors.blueGrey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23,043", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.start, isColor:false),
                  ],
                ),
                // Divider(
                //   height: AppLayout.getHeight(30),
                //   color: Colors.blueGrey,
                // ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(sections: 12,isColor: false)
              ],
            ),
          )
        ],

      ),
    );
  }
}
