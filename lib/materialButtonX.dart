library material_buttonx;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

class MaterialButtonX extends StatelessWidget {
  final String? message;
  final double? height;
  final double? width;
  final Color? color;
  final double? iconSize;
  final IconData? icon;
  final VoidCallback onClick;
  final double? radius;

  const MaterialButtonX(
      {Key? key,
      this.message,
      this.height,
      this.width,
      this.color,
      this.iconSize,
      this.icon,
      required this.onClick,
      this.radius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => null,
      hoverColor: Colors.black26,
      onTap: onClick,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: color!,
                offset: Offset(.5, .5),
                spreadRadius: 1,
                blurRadius: 8.0)
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(height!),
              topLeft: Radius.circular(height!),
              topRight: Radius.circular(radius! / 1.5),
              bottomRight: Radius.circular(radius! / 1.5)),
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: width! - (height! / 1.9),
              height: height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(height!),
                    topLeft: Radius.circular(height!),
                    // topRight: Radius.circular(radius),
                    bottomRight: Radius.circular(width!)),
              ),
              child: Text(
                "$message",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
            Positioned(
                top: 8.0,
                bottom: 8.0,
                right: 2.0,
                child: Icon(
                  icon,
                  size: iconSize,
                  color: color,
                ))
          ],
        ),
      ),
    );
  }
}
