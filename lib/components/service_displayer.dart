import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.expand(height: 200),
      child: Ink.image(
        image: NetworkImage(imageURL),
        fit: BoxFit.fill,
        child: InkWell(
          onTap: () {},
        ),
      ),
    );
  }
}

class ServiceCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: [
          ServiceCard(
            imageURL:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJjUzSjsGfs4CVQ4dgvNdtOkS4-wbb4vWPXA&s",
          ),
          ServiceCard(
            imageURL:
                "https://static.vecteezy.com/system/resources/previews/017/462/988/large_2x/catering-services-background-with-snacks-and-glasses-on-bartender-counter-in-restaurant-photo.jpg",
          ),
          ServiceCard(
            imageURL:
                "https://5.imimg.com/data5/SELLER/Default/2023/10/351027020/WQ/VY/LA/10351111/hotel-accommodation-service.jpeg",
          ),
        ],
      ),
    );
  }
}
