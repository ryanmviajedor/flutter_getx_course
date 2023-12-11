import 'package:flutter/material.dart';
import 'package:flutter_getx_course/controller/home_controller.dart';
import 'package:flutter_getx_course/view/screens/first_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
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
          Obx(
            () => Column(
              children: [
                Text(
                  homeController.index.value.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: MaterialButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      homeController.increaseIndex();
                    },
                    child: const Text("Home Screen"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
