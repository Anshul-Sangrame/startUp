import 'package:flutter/material.dart';

// class ServiceCard extends StatelessWidget {
//   const ServiceCard({
//     super.key,
//     required this.imageURL,
//   });

//   final String imageURL;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       // semanticContainer: true,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       elevation: 10,
//       child: Container(
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//         ),
//         child: Ink.image(
//           image: NetworkImage(imageURL),
//           fit: BoxFit.fill,
//           child: InkWell(
//             onTap: () {},
//           ),
//         ),
//       ),
//     );
//   }
// }

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.imageURL,
    required this.title,
  });

  final String title;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    double width = 180;
    double margin = 10;

    return Container(
      height: width - 2 * margin,
      width: width - 2 * margin,
      margin: EdgeInsets.all(margin),
      child: Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HeadingText(
                  text: title,
                ),
                RoundedImage(imageURL: imageURL),
              ],
            ),
          )),
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
      decoration: BoxDecoration(
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
      child: Card(
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
      padding: EdgeInsets.only(top: 30),
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            ServiceCard(
              imageURL:
                  "assets/images/taxi.jpeg",
              title: "Taxi",
            ),
            ServiceCard(
              imageURL:
                  "assets/images/flight.jpeg",
              title: "Flight",
            ),
            ServiceCard(
              imageURL:
                  "assets/images/hotel.jpeg",
              title: "Hotel",
            ),
            ServiceCard(
              imageURL:
                  "assets/images/food.jpg",
              title: "Food",
            ),
            // ServiceCard(
            //   imageURL:
            //       "https://5.imimg.com/data5/SELLER/Default/2023/10/351027020/WQ/VY/LA/10351111/hotel-accommodation-service.jpeg",
            // ),
            // ServiceCard(
            //   imageURL:
            //       "https://5.imimg.com/data5/SELLER/Default/2023/10/351027020/WQ/VY/LA/10351111/hotel-accommodation-service.jpeg",
            // ),
            // ServiceCard(
            //   imageURL:
            //       "https://5.imimg.com/data5/SELLER/Default/2023/10/351027020/WQ/VY/LA/10351111/hotel-accommodation-service.jpeg",
            // ),
            // ServiceCard(
            //   imageURL:
            //       "https://5.imimg.com/data5/SELLER/Default/2023/10/351027020/WQ/VY/LA/10351111/hotel-accommodation-service.jpeg",
            // ),
          ],
        ),
        OfferCard(),
      ],
    );
  }
}
