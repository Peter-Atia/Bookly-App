import 'package:flutter/material.dart';

class CustomSlidingWidget extends StatefulWidget {
  const CustomSlidingWidget({
    super.key,
    required this.begin,
    required this.end,
    required this.widget,
  });
  final Offset begin;
  final Offset end;
  final Widget widget;
  @override
  State<CustomSlidingWidget> createState() => _CustomSlidingWidgetState();
}

class _CustomSlidingWidgetState extends State<CustomSlidingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: widget.begin,
      end: widget.end,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: widget.widget,
        );
      },
    );
  }
}
