import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_pro/color/colors.dart';

class BoxScreen2 extends StatefulWidget {
  const BoxScreen2({super.key});

  @override
  State<BoxScreen2> createState() => _BoxScreen2State();
}

class _BoxScreen2State extends State<BoxScreen2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Row(
          children: [
            Text(
              'Akses cepat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          // height: 110,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: CustomColors.borderColor),
            color: Colors.white, // Background color of the container
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), // Shadow color
                // spreadRadius: 0.4, // Spread radius
                // blurRadius: 0.5, // Blur radius
                // offset: const Offset(1, 3), // Offset in x and y directions
              ),
            ],
            borderRadius:
                BorderRadius.circular(15), // Optional: For rounded corners
          ),
          child: Column(children: [
          
            Container(
             height: 55,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(17, 0 ,16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [  
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: CustomColors.appBarColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: SvgPicture.asset('images/a1.svg'),
                  ),
                    // const  SizedBox(width: 12,)  ,     //  const   SizedBox(width: 12,),
                  const Padding(
           padding:  EdgeInsets.only(right: 50),
                    child:  Text(
                      'Pintu Masuk Motor MNC Land',  
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  SizedBox(
                      height: 18,
                      width: 18,
                    // alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      'images/nextscreen.svg', 
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
            ),
             Container(
              height: 55,
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(17, 15 ,16, 16),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [   
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: CustomColors.appBarColor,
                          borderRadius: BorderRadius.circular(32)),
                      child: SvgPicture.asset('images/a1.svg'),
                    ),
                   
                   const  Padding(
                      padding:  EdgeInsets.only(right: 50),
                      child:  Text(
                        'Pintu Masuk Motor MNC Land',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: SvgPicture.asset(
                        'images/nextscreen.svg',
                        color: Colors.black,
                      ),
                    ),
                  ]),
               ),
             ),
          ]),
        )
      ],
    );
  }
}
