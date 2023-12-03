import 'package:flutter/material.dart';

import 'package:tesla/pages/first_page.dart';
import 'package:tesla/pages/fourth_page.dart';
import 'package:tesla/pages/second_page.dart';
import 'package:tesla/pages/third_page.dart';

import '../services/constants/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: const Color(0xffD01000),
            controller: controller,
            tabs: const [
              Tab(
                child: Text(
                  "1.Car",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "2. Exterior",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "3. Interior",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "4. Autopilot",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              )
            ]),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: const Color(0xff000000).withOpacity(0.4),
        ),
        centerTitle: true,
        title: Image.asset(
          CustomImages.back,
          height: 18.55,
          width: 112,
        ),
      ),
      body: TabBarView(controller: controller, children: [
        FirstPage(),
        SecondPage(),
        ThirdPage(),
        FourthPage(),
      ]),
    );
  }
}
