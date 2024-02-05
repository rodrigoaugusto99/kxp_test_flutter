import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_app/ui/common/ui_helpers.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WaveAnimationView extends StatefulWidget {
  final double maxHeight;
  late Completer animationCompleted;

  WaveAnimationView(
      {super.key, required this.maxHeight, required this.animationCompleted});

  @override
  State<WaveAnimationView> createState() => _WaveAnimationViewState();
}

class _WaveAnimationViewState extends State<WaveAnimationView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool completed = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          completed = true;
        });
        Future.delayed(const Duration(milliseconds: 500)).then((value) {
          widget.animationCompleted.complete(true);
        });
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: completed ? const Color(0xff102e35) : Colors.transparent,
      height: screenHeight(context),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: _animation.value * widget.maxHeight,
            child: Stack(
              children: [
                WaveWidget(
                  waveAmplitude: 20,
                  size: const Size(
                    double.infinity,
                    double.infinity,
                  ),
                  config: CustomConfig(
                    gradients: [
                      [const Color(0xff102e35), const Color(0xff102e35)],
                    ],
                    durations: [
                      2000,
                    ],
                    heightPercentages: [-0.15],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
