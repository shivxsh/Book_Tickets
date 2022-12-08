import 'package:flutter/material.dart';

//This class helps to build the two small dots inside the ticket view UI
// 0---F---0     F = flight icon.


class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor==null? Colors.white : Color(0xFF8ACCF7)),
      ),
    );
  }
}


