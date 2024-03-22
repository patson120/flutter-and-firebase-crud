import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/binding/homeBinding.dart';
import 'package:todolist/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // home: const Home(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: "/home", page: () => const Home(), binding: HomeBinding()),
        GetPage(name: "/", page: () => const Home(), binding: HomeBinding())
      ],
    );
  }
}
