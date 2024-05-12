import 'package:flutter/material.dart';

class Boxscreen3 extends StatefulWidget {
  const Boxscreen3({super.key});

  @override
  State<Boxscreen3> createState() => _Boxscreen3State();
}

class _Boxscreen3State extends State<Boxscreen3> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
            Image.asset('images/box3img.png',width: 100,filterQuality: FilterQuality.high,),
          ]),
         const  SizedBox(height: 8,),
           const Row(
            children: [
            Text('Lebih hemat pake GoPayLater', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),
          ]),
         const  SizedBox(height: 8,),
           const Text('Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~', style: TextStyle(fontSize: 16,),)
        ],
      ),
    );
  }
}