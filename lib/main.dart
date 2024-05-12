import 'package:flutter/material.dart';
import 'package:task_pro/color/colors.dart';
import 'package:task_pro/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 70, 161, 73),
        ),
        useMaterial3: true,
        fontFamily: 'SFPro',
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController tabController = TabController(length: 4, vsync: this, initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(backgroundColor: CustomColors.appBarColor,
        toolbarHeight: kToolbarHeight-0,
        bottom: 
        PreferredSize(
    
          preferredSize: const Size.fromHeight(kToolbarHeight + 0),
          child: Container(
            color: CustomColors.appBarColor,
            child: Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: kToolbarHeight,
              decoration: BoxDecoration(
                color: CustomColors.tapBarColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                controller: tabController,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: CustomColors.tapBarColor,
                // labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                indicatorColor: Colors.red,
                dividerColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                // splashBorderRadius: BorderRadius.circular(10),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                }),
                isScrollable: false,

                tabs: const [
                  Text('Berando', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Promo',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Pesanan',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Chat',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            HomeScreen(),
            Center(
              child: Text(
                'Promo',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Center(
              child: Text('Pesanan'),
            ),
            Center(
              child: Text('Chat'),
            ),
          ],
        ),
      ),
    );
  }
}