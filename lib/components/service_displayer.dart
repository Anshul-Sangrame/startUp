import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../states/state.dart';
import './service_page.dart' show ServicePage;
import 'common_components.dart';
import './input_widget.dart';
import '../constants/constants.dart' as constants;
import 'package:path/path.dart' as path;

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
                  CardHeadingText(
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
            CardHeadingText(
              text: "Best Offers",
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 30),
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            ServiceCard(
              imageURL: path.join(constants.IMAGE_LOC,"taxi.jpeg"),
              title: "Taxi",
              content: ServicePage(
                inputWidget: const TaxiInput(),
                imageURL: path.join(constants.IMAGE_LOC,"taxi_bg.webp"),
              ),
            ),
            ServiceCard(
              imageURL: path.join(constants.IMAGE_LOC,"flight.jpeg"),
              title: "Flight",
              content: ServicePage(
                imageURL: path.join(constants.IMAGE_LOC,"flight_bg.jpg"),
                inputWidget: const FlightInput(),
              ),
            ),
            ServiceCard(
              imageURL: path.join(constants.IMAGE_LOC,"hotel.jpeg"),
              title: "Hotel",
              content: ServicePage(
                imageURL: path.join(constants.IMAGE_LOC,"hotel_bg.jpg"),
                inputWidget: const HotelInput(),
              ),
            ),
            ServiceCard(
              imageURL: path.join(constants.IMAGE_LOC,"food.jpg"),
              title: "Food",
              content: ServicePage(
                imageURL: path.join(constants.IMAGE_LOC,"food_bg.png"),
                inputWidget: const FoodInput(),
              ),
            ),
          ],
        ),
        const Divider(),
        const OfferCard(),
      ],
    );
  }
}
