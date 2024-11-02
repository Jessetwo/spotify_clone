import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AppImages.chooseBG))),
        ),
        Container(color: Colors.black.withOpacity(0.15))
      ],
    ));
  }
}
