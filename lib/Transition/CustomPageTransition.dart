import 'package:flutter/material.dart';

class CustomPageNavigation extends PageRouteBuilder {
  final Widget child;
  CustomPageNavigation({
    required this.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
