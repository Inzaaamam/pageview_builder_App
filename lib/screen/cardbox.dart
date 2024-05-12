import 'package:flutter/material.dart';
import 'package:task_pro/color/colors.dart';

class CardBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;

  CardBox({
    required this.imagePath,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.containerColor1, width: 1),
          // borderRadius: const BorderRadius.all(Radius.circular(15))
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.circular(20),
             borderRadius: const  BorderRadius.only(
                topLeft: Radius.circular(15.0), // Top left corner
                topRight: Radius.circular(15.0),  // Adjust the radius as needed
                ), // Image border
            child: SizedBox(height: 170,
              child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
              ))
          ),
          // Container(
          //   // width: 150,
          //   height: 170,
          //   clipBehavior: Clip.antiAlias,
          //   decoration: const BoxDecoration(
          //      borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(15.0), // Top left corner
          //       topRight: Radius.circular(15.0),  // Adjust the radius as needed
          //       ),),
          //   child: Image.asset(
          //   imagePath,
          //   fit: BoxFit.fill,
          // ),),
          Container(
            color: CustomColors.containerColor1.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  const  SizedBox(height: 10,),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  // const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
