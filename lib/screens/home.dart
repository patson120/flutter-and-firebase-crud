import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/controller/homeCtrl.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text("Home"),
              ),
              body: SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        controller.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
