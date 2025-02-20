import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/utils/assets_path.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.backgroundSvg,
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: double.maxFinite,
        ),
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: SafeArea(child: child),
        )
      ],
    );
  }
}
