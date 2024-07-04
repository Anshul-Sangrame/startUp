import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({
    super.key,
    required this.inputWidget,
    required this.imageURL,
  });

  final Widget inputWidget;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TopInputHandler(),
      ],
    );
  }
}


class TopInputHandler extends StatelessWidget {
  const TopInputHandler({
    super.key,
  });

  final String imageUrl = "assets/images/flight_bg.jpg";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 3;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      // height: height + 45,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TitleImage(height: height, imageUrl: imageUrl),
          InputBox(height: height, screenWidth: screenWidth),
        ],
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  const InputBox({
    super.key,
    required this.height,
    required this.screenWidth,
  });

  final double height;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {

    double myHeight = height - 20;
    return Positioned(
      top: height - myHeight/2,
      left: screenWidth/2 - myHeight/2,
      child: Container(
        width: myHeight,
        height: myHeight,
        color: Colors.green,
      ),
    );
  }
}

class TitleImage extends StatelessWidget {
  const TitleImage({
    super.key,
    required this.height,
    required this.imageUrl,
  });

  final double height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
