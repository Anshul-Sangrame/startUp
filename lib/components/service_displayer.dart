import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../states/state.dart';
import './service_page.dart' show ServicePage;

class ServiceCard extends ConsumerWidget {
  const ServiceCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.content,
  });

  final String title;
  final String imageURL;
  final Widget content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = 180;
    double margin = 10;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: width - 2 * margin,
        width: width - 2 * margin,
        margin: EdgeInsets.all(margin),
        child: Card(
            elevation: 10,
            child: InkWell(
              onTap: () {
                ref.read(contentProvider.notifier).setContent(content);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HeadingText(
                    text: title,
                  ),
                  RoundedImage(imageURL: imageURL),
                ],
              ),
            )),
      ),
    );
  }
}

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    double size = 60;
    return Container(
      height: size,
      width: size,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width / 2;
    double margin = 10;

    return Container(
      height: height - 2 * margin,
      width: width - 2 * margin,
      margin: EdgeInsets.all(margin),
      child: const Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeadingText(
              text: "Best Offers",
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Theme.of(context).hintColor),
    );
  }
}

class ServiceCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 30),
      children: [
        const Wrap(
          alignment: WrapAlignment.center,
          children: [
            ServiceCard(
              imageURL:
                  "assets/images/taxi.jpeg",
              title: "Taxi",
              content: Placeholder(),
            ),
            ServiceCard(
              imageURL:
                  "assets/images/flight.jpeg",
              title: "Flight",
              content: ServicePage(
                imageURL: "assets/images/flight_bg.jpg",
                inputWidget: Placeholder(
                  fallbackHeight: 40,
                  fallbackWidth: 40,
                ),
              ),
            ),
            ServiceCard(
              imageURL:
                  "assets/images/hotel.jpeg",
              title: "Hotel",
              content: Placeholder(),
            ),
            ServiceCard(
              imageURL:
                  "assets/images/food.jpg",
              title: "Food",
              content: Placeholder(),
            ),
          ],
        ),
        OfferCard(),
      ],
    );
  }
}
