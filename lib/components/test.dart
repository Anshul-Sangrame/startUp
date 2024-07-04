import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startup/components/service_displayer.dart';
import '../states/state.dart';

class Test extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    double height = 100;
    return  Container( 
          child: Center( 
            child: Container(
              height: height,
              width: 100,
              child: LayoutBuilder( 
                builder: (BuildContext context, BoxConstraints constraints) { 
                  height = constraints.maxHeight; 
                
                  return Text("The height of the container is $height"); 
                }, 
              ),
            ), 
          ), 
        ); 
  } 
} 