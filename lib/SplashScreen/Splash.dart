import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiveapp/SplashScreen/splashController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashCntlr = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashCntlr.navToNextPage();
    return Scaffold(
        backgroundColor: const Color(0xff090F32),
        body: GetBuilder<SplashController>(
          builder: (_) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/HiveLogo.png"),
                    const SizedBox(height: 20),
                    const CupertinoActivityIndicator(color: Color(0xffc9e0ff))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
