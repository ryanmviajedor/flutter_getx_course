import 'package:flutter/material.dart';
import 'package:flutter_getx_course/controller/home_controller.dart';
import 'package:flutter_getx_course/view/screens/first_screen.dart';
import 'package:flutter_getx_course/view/screens/second_screen.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.lazyPut(() => HomeController());
  //final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Get.to(FirstScreen());
            },
            child: const Text(
              'NEXT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                Get.to(() => FirstScreen());
              },
              child: const Text("First Screen"),
            ),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                Get.to(() => SecondScreen());
              },
              child: const Text("Second Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
