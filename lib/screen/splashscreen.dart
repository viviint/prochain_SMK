import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  next() {
    Future.delayed(const Duration(seconds: 5), () async {
      Get.to(() => const HomeScreen());
    });
  }

  @override
  void initState() {
    next();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 84,
          width: 238,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logoprochain.png'), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
