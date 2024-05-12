import 'package:flutter/material.dart';
import 'package:task_pro/color/colors.dart';
import 'package:task_pro/screen/boxsvgimag.dart';

class CardScreen1 extends StatefulWidget {
  const CardScreen1({super.key});

  @override
  State<CardScreen1> createState() => _CardScreen1State();
}

class _CardScreen1State extends State<CardScreen1> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: unnecessary_const
                CustomComponent(
                  svgImagePath: 'images/a1.svg',
                  text: 'GoRide',
                  colorBg: CustomColors.appBarColor,
                ),
                CustomComponent(
                  svgImagePath: 'images/a2.svg',
                  text: 'GoCar',
                  colorBg: CustomColors.appBarColor,
                ),
                CustomComponent(
                  svgImagePath: 'images/a3.svg',
                  text: 'GoFood',
                  colorBg: Colors.red,
                ),
                CustomComponent(
                  svgImagePath: 'images/a4.svg',
                  text: 'GoSend',
                  colorBg: CustomColors.appBarColor,
                ),
              ]),
          SizedBox(
            height: 29,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
                CustomComponent(
                  svgImagePath: 'images/a5.svg',
                  text: 'GoMart',
                  colorBg: Colors.red,
                ),
                  CustomComponent(
                  svgImagePath: 'images/a6.svg',
                  text: 'Goplus',
                  colorBg: CustomColors.vector6Color,
                ),
                  CustomComponent(
                  svgImagePath: 'images/a7.svg',
                  text: 'Goplus',
                  colorBg: CustomColors.vector6Color,
                ),
               
                  CustomComponent(
                  svgImagePath: 'images/a10.svg',
                  text: 'Lainnya',
                  colorBg: Colors.black,
                ),
            ],
          )
        ],
      ),
    );
  }
}
