import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:my_first_app/ui/views/startup/components/wave_animation_view.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          if (viewModel.isShowingWaveAnimation)
            WaveAnimationView(
              maxHeight: screenHeight(context),
              animationCompleted: viewModel.animationCompleted,
            ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            top: screenHeight(context) / 2 - 12,
            left: screenWidth(context) / 2 -
                (viewModel.isShowingLogoAnimation ? 100 : 27.5),
            child: SvgPicture.asset(
              "lib/assets/logo/inner_face.svg",
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcATop,
              ),
              height: 55,
              width: 55,
            ),
          ),
          Positioned(
            top: screenHeight(context) / 2,
            left: screenWidth(context) / 2 - 35,
            child: AnimatedOpacity(
              opacity: viewModel.isShowingTextAnimation ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: SvgPicture.asset(
                "lib/assets/logo/inner_text.svg",
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop,
                ),
                height: 32,
                width: 130,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
