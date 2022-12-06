import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'app_layout.dart';
import 'app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(15)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
