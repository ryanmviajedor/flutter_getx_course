import 'package:flutter/material.dart';
import 'package:flutter_getx_course/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Column(
                  children: [
                    Text(
                      controller.index.toString(),
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
                          controller.increaseIndex();
                        },
                        child: const Text("Home Screen"),
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
