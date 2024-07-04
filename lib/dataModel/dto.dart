import 'package:flutter/material.dart';

abstract class Result {
  const Result({
    required this.companyName,
    required this.startPrice,
    required this.endPrice,
  });
  final String companyName;
  final double startPrice;
  final double endPrice;

  Widget getDisplayWidget();
}

abstract class TravelResult extends Result {
  const TravelResult({
    required super.companyName,
    required super.startPrice,
    required super.endPrice,
    required this.startTravel,
    required this.endTravel,
  });

  final DateTime startTravel;
  final DateTime endTravel;
}

class FlightTravelResult extends TravelResult {
  const FlightTravelResult({
    required super.companyName,
    required super.startPrice,
    required super.endPrice,
    required super.startTravel,
    required super.endTravel,
  });

  @override
  Widget getDisplayWidget() {
    return const Placeholder(
      fallbackHeight: 40,
      fallbackWidth: 40,
    );
  }
}
