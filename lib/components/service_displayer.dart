import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.temp,
  });

  final int temp;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text("This is a card $temp"),
    );
  }
}

class ServiceCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listOfCard = <Widget>[];
    for(int i =0 ;i <1000;i++)
    {
      listOfCard.add(ServiceCard(temp: i));
    }
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: listOfCard,
      ),
    );
  }
}
