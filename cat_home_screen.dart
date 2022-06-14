import 'package:cat_app/component/cat_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'meow_screen.dart';

class CatHomeScreen extends StatelessWidget {
  const CatHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cat App',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'We\'re right there',
                style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
              ),
              const CatImages(
                'wildcats.png',
                width: 350,
                height: 350,
              ),
              ElevatedButton(
                onPressed: () => Get.to(const MeowScreen()),
                child: const Text('Click Here'),
              ),
            ],
          ),
        ),
      );
}
