import 'package:flutter/material.dart';
import 'package:flutter_progress_bar/line_progress_bar_painter.dart';

class LIne extends StatefulWidget {
  const LIne(
      {super.key,
      this.duration = const Duration(seconds: 6),
      this.width = 300,
      this.text = 'Loading...',
      this.radius = 6,
      this.fontWeight = FontWeight.w400,
      double? widthP,
      this.rectOuterColor = Colors.black,
      required this.pointColor})
      : fontSize = widthP ?? width * 0.08;

  final Duration duration;
  final Color pointColor, rectOuterColor;
  final double width, radius, fontSize;
  final String text;
  final FontWeight fontWeight;

  @override
  State<LIne> createState() => _LIneState();
}

class _LIneState extends State<LIne> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<num> _animation1,
      _animation2,
      _animation3,
      _animation4,
      _animation5,
      _animation6,
      _animation7,
      _animation8,
      _animation9,
      _animationText1,
      _animationText2,
      _animationText3,
      _animationText4,
      _animationText5,
      _animationText6,
      _animationText7,
      _animationText8,
      _animationText9;

  bool isComplete = false;

  Tween<num> opacityTweenForward = Tween(begin: 0.1, end: 1.0);
  Tween<num> opacityTweenReverse = Tween(begin: 1.0, end: 0.1);

  ColorTween colorTween =
      ColorTween(begin: Colors.transparent, end: Colors.blue);

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: widget.duration)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _animationController.reset();
            } else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });

    _animation1 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.0, 0.1)));
    _animation2 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.1, 0.2)));
    _animation3 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.2, 0.3)));
    _animation4 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.3, 0.4)));
    _animation5 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.4, 0.5)));
    _animation6 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.5, 0.6)));
    _animation7 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.6, 0.7)));
    _animation8 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.7, 0.8)));
    _animation9 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.8, 0.9)));

    _animationText1 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.0, 0.1)));
    _animationText2 = opacityTweenReverse.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.1, 0.2)));
    _animationText3 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.2, 0.3)));
    _animationText4 = opacityTweenReverse.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.3, 0.4)));
    _animationText5 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.4, 0.5)));
    _animationText6 = opacityTweenReverse.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.5, 0.6)));
    _animationText7 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.6, 0.7)));
    _animationText8 = opacityTweenReverse.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.7, 0.8)));
    _animationText9 = opacityTweenForward.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.8, 0.9)));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = widget.width;

    double height = widget.width * 0.35;

    // double left = widget.width * 0.55;

    void foo() {
      if (isComplete) {
        _animationController.reset();
      } else {
        _animationController.forward();
      }
      isComplete = !isComplete;
    }

    return SizedBox(
      height: width / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    foo();
                  },
                  child: CustomPaint(
                    painter: LineProgressBarPainter(
                      width: width,
                      radius: widget.radius,
                      pointColor: widget.pointColor,
                      rectOuterColor: widget.rectOuterColor,
                      opacity1: _animation1.value.toDouble(),
                      opacity2: _animation2.value.toDouble(),
                      opacity3: _animation3.value.toDouble(),
                      opacity4: _animation4.value.toDouble(),
                      opacity5: _animation5.value.toDouble(),
                      opacity6: _animation6.value.toDouble(),
                      opacity7: _animation7.value.toDouble(),
                      opacity8: _animation8.value.toDouble(),
                      opacity9: _animation9.value.toDouble(),
                    ),
                    child: SizedBox(
                      width: width,
                      height: height / 2,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: width * 0.3,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.3,
                      ),
                      Builder(builder: (context) {
                        double opacity = 0.0;

                        if (_animationController.lastElapsedDuration != null) {
                          if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.1) {
                            opacity = _animationText1.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.2) {
                            opacity = _animationText2.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.3) {
                            opacity = _animationText3.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.4) {
                            opacity = _animationText4.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.5) {
                            opacity = _animationText5.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.6) {
                            opacity = _animationText6.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.7) {
                            opacity = _animationText7.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <
                              widget.duration.inSeconds * 0.8) {
                            opacity = _animationText8.value.toDouble();
                          } else if (_animationController
                                  .lastElapsedDuration!.inSeconds <=
                              widget.duration.inSeconds * 0.9) {
                            opacity = _animationText9.value.toDouble();
                          }
                        }
                        return Opacity(
                          opacity: opacity,
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              fontSize: widget.fontSize,
                              fontWeight: widget.fontWeight,
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
