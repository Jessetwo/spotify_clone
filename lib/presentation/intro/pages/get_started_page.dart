import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/themes/app_colors.dart';
import 'package:spotify_clone/presentation/intro/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 40, horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AppImages.introBG))),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)),
              //space beween logo and title text
              const Spacer(),
              // Title text
              const Text(
                'Enjoy Listening to Music',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              //space between two text
              const SizedBox(height: 21),
              // body text - Aligned to centre
              const Text(
                'Listen to Music on the go. Wherever you go, whenever you like all on your finger tips. Sign up now and enhoy unlimited access to your favorite songs',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              //importing buttin from the widgets folder and giving space between text and button
              const SizedBox(
                height: 20,
              ),
              BasicAppButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseModePage()));
                  },
                  title: "Get Started")
            ],
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        )
      ],
    ));
  }
}
