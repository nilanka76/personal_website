import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const int DEFAULT_NORMAL_SCROLL_ANIMATION_LENGTH_MS = 250;
const int DEFAULT_SCROLL_SPEED = 130;

class SmoothScrollWeb extends StatelessWidget {
  ///Same ScrollController as the child widget's.
  final ScrollController scrollController;

  ///Child scrollable widget.
  final Widget child;

  ///Scroll speed px/scroll.
  final int scrollSpeed;

  ///Scroll animation length in milliseconds.
  final int scrollAnimationLength;

  ///Curve of the animation.
  final Curve curve;

  double _scroll = 0;

  SmoothScrollWeb({
    required this.scrollController,
    required this.child,
    this.scrollSpeed = DEFAULT_SCROLL_SPEED,
    this.scrollAnimationLength = DEFAULT_NORMAL_SCROLL_ANIMATION_LENGTH_MS,
    this.curve = Curves.linear,
    required PageController pageController,
  });

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.activity is IdleScrollActivity) {
        _scroll = scrollController.position.extentBefore;
      }
    });

    return Listener(
      onPointerSignal: (pointerSignal) {
        int millis = scrollAnimationLength;
        if (pointerSignal is PointerScrollEvent) {
          if (pointerSignal.scrollDelta.dy > 0) {
            _scroll += scrollSpeed;
          } else {
            _scroll -= scrollSpeed;
          }
          if (_scroll > scrollController.position.maxScrollExtent) {
            _scroll = scrollController.position.maxScrollExtent;
            millis = scrollAnimationLength ~/ 2;
          }
          if (_scroll < 0) {
            _scroll = 0;
            millis = scrollAnimationLength ~/ 2;
          }

          scrollController.animateTo(
            _scroll,
            duration: Duration(milliseconds: millis),
            curve: curve,
          );
        }
      },
      child: child,
    );
  }
}
