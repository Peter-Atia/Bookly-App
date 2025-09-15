import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/custom_sliding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}


class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(kTransitionDuration,(){
      Get.to(HomeView(),transition: Transition.fade);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomSlidingWidget(
          begin: Offset(0, -.5),
          end: Offset(0, 0),
          widget: Image.asset(AssetsData.logo),
        ),
        CustomSlidingWidget(
          begin: Offset(0, 1.5),
          end: Offset(0, 0),
          widget: Text("Read free books", textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
