import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'common_components.dart';

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
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TopInputHandler(
            imageUrl: imageURL,
            inputWidget: inputWidget,
          ),
        ),
        const Divider(),
        // const Results(),
      ],
    );
  }
}

class Results extends StatelessWidget {
  const Results({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 100,
    );
  }
}

class TopInputHandler extends StatelessWidget {
  const TopInputHandler({
    super.key,
    required this.inputWidget,
    required this.imageUrl,
  });

  final String imageUrl;
  final Widget inputWidget;

  @override
  Widget build(BuildContext context) {
    final double height = 0.4 * MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          height: height,
          child: TitleImage(imageUrl: imageUrl),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 0.6 * height,
          ),
          child: InputFormWrapper(inputWidget: inputWidget),
        ),
      ],
    );
  }
}

class InputFormWrapper extends StatelessWidget {
  const InputFormWrapper({
    super.key,
    required this.inputWidget,
  });

  final Widget inputWidget;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width - 70;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.topCenter,
              constraints: BoxConstraints(
                minHeight: width - 70,
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: inputWidget,
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: const FilledButtonText(text: "Search"),
            )
          ],
        ),
      ),
    );
  }
}

class TitleImage extends StatelessWidget {
  const TitleImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
