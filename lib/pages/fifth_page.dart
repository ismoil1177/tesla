import 'package:flutter/material.dart';
import 'package:tesla/pages/initial_page.dart';

import '../services/constants/images.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      ///#Body
      body: Stack(
        children: [
          Image.asset(CustomImages.tesla3),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: 290,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Summary",
                    style: TextStyle(fontSize: 20, color: Color(0xffa4B0BC)),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    " Your Model Y",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "\$60,700",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  /// #Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 88),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Initial(),
                          ),
                        );
                      },
                      child: Container(
                        height: 64,
                        width: 299,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 2,
                                color: const Color(0xffD01000),
                                style: BorderStyle.solid)),
                        child: const Center(
                          child: Text(
                            "Pay",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
