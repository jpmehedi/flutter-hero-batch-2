
  import 'package:flutter/material.dart';

Route createRoute(page){
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation){
        return page;
      },

      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: Offset(0.0, 1.0),
              end: Offset.zero
            )
          ),
          child: child,
        );
      }
    );

  }