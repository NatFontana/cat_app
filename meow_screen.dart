import 'package:cat_app/component/cat_images.dart';
import 'package:cat_app/getxconnection/cat_controller.dart';
import 'package:cat_app/screens/cat_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeowScreen extends GetView<CatController> {
  const MeowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'CRAZY CAT IMAGES',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: controller.obx(
          (state) {
            return SingleChildScrollView(
              child: Column(
                children: state?.map((cat) => Text(cat.id ?? '')).toList() ?? [],
              ),
            );
          },
          onError: (error) {
            print(error);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'We\'re not on the mood',
                    style: TextStyle(fontSize: 30),
                  ),
                  const CatImages('badmoodcats.png', width: 450, height: 300),
                  ElevatedButton(
                    onPressed: () => Get.to(
                      const CatHomeScreen(),
                    ),
                    child: const Text('Try Again?'),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
