import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomComponent extends StatelessWidget {
  final String svgImagePath;
  final String text;
  final Color colorBg;

  const CustomComponent({super.key, required this.svgImagePath, required this.text, required this.colorBg});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color:  colorBg,// Change color as needed
          ),
          child: Center(
            child: SvgPicture.asset(
              svgImagePath,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
       const  SizedBox(height: 9),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12.5,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
