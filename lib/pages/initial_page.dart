import 'package:flutter/material.dart';
import 'package:tesla/pages/home_page.dart';
import 'package:tesla/services/constants/images.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          CustomImages.back1,
          height: 19,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Tesla",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 24,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "Model X",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Model Y",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Roadster",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(CustomImages.blackBack),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "300 mi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: "\nRange (EPA est.)",
                          style: TextStyle(color: Colors.white, fontSize: 13))
                    ])),
                const SizedBox(
                  width: 65,
                ),
                Container(
                  width: 1,
                  height: 57,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                ),
                const SizedBox(
                  width: 40,
                ),
                RichText(
                  text: const TextSpan(
                    text: "AWD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\nDual Motor",
                          style: TextStyle(color: Colors.white, fontSize: 13))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Acceleration: 0-60 mph in 3.5s",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Top speed: up to 150 mph",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),

            /// #Button

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 2,
                          color: const Color(0xffD01000),
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      "ORDER NOW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
