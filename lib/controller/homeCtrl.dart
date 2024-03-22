// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:todolist/services/database.dart';

class HomeController extends GetxController {
  String message = "Hello controller!";

  final DatabaseMethod _service = DatabaseMethod();

  @override
  void onInit() async {
    print('Initializing controller...');
    DocumentReference<Map<String, dynamic>> product = await _service.addData({
      "id": 1,
      "nom": "Pizza au jambon",
      "description": "Pizza au jambon",
      "prix": 4200,
      "quantity": 12
    });
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    print(product);
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    super.onInit();
  }
}
