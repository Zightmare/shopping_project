//loginScreen
import 'package:flutter/material.dart';

// import 'package:flutterscaffoldprojec1t/Login/Splash.dart';
import 'MultiWelcomeSCreens.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          ClipPath(
            clipper: TopShape(),
            child: Container(color: Color(0xffffEB4155)),
          ),
          ClipPath(
            clipper: TopShape2(),
            child: Container(color: Color(0xffffFF7585)),
          ),
          MultiWelcomeScreens(),
        ],
      ),
    );
  }
}

class TopShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 320;
    final double _yScaling = size.height / 568;
    path.lineTo(327 * _xScaling, 39 * _yScaling);
    path.cubicTo(
      326.333 * _xScaling,
      71.1667 * _yScaling,
      261.6 * _xScaling,
      108.4 * _yScaling,
      8 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      8 * _xScaling,
      0 * _yScaling,
      327 * _xScaling,
      0 * _yScaling,
      327 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      327 * _xScaling,
      0 * _yScaling,
      327 * _xScaling,
      39 * _yScaling,
      327 * _xScaling,
      39 * _yScaling,
    );
    path.cubicTo(
      327 * _xScaling,
      39 * _yScaling,
      327 * _xScaling,
      39 * _yScaling,
      327 * _xScaling,
      39 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TopShape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 320;
    final double _yScaling = size.height / 568;
    path.lineTo(320 * _xScaling, 24.3026 * _yScaling);
    path.cubicTo(
      319.448 * _xScaling,
      44.347 * _yScaling,
      265.876 * _xScaling,
      67.5487 * _yScaling,
      56 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      56 * _xScaling,
      0 * _yScaling,
      320 * _xScaling,
      0 * _yScaling,
      320 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      320 * _xScaling,
      0 * _yScaling,
      320 * _xScaling,
      24.3026 * _yScaling,
      320 * _xScaling,
      24.3026 * _yScaling,
    );
    path.cubicTo(
      320 * _xScaling,
      24.3026 * _yScaling,
      320 * _xScaling,
      24.3026 * _yScaling,
      320 * _xScaling,
      24.3026 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
