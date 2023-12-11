import 'package:flutter/material.dart';
import 'package:flutter_getx_course/controller/home_controller.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            builder: (controller) {
              return Text(
                controller.name,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                controller.displayName();
              },
              child: const Text("Display Name"),
            ),
          ),
        ],
      ),
    );
  }
}
