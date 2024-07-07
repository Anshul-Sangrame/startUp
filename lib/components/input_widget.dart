import 'package:flutter/material.dart';
import './common_components.dart';

class FlightInput extends StatelessWidget {
  const FlightInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnWithGap(
      gap: 10,
      children: [
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin,color: Colors.red,),
            labelText: "From",
            hintText: "Enter departure location",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin,color: Colors.green,),
            labelText: "To",
            hintText: "Enter arrival location",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_month_outlined),
            labelText: "Date",
            hintText: "Enter arrival Date",
          ),
        ),
      ],
    );
  }
}

class TaxiInput extends StatelessWidget {
  const TaxiInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnWithGap(
      gap: 10,
      children: [
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin,color: Colors.red,),
            labelText: "From",
            hintText: "Enter pick-up location",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin,color: Colors.green,),
            labelText: "To",
            hintText: "Enter destination location",
          ),
        ),
      ],
    );
  }
}

class HotelInput extends StatelessWidget {
  const HotelInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnWithGap(
      gap: 10,
      children: [
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin),
            labelText: "Location",
            hintText: "Enter hotel location",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_month_outlined,color: Colors.red,),
            labelText: "Check in",
            hintText: "Enter check in date",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_month_outlined,color: Colors.green,),
            labelText: "Check out",
            hintText: "Enter check out date",
          ),
        ),
      ],
    );
  }
}

class FoodInput extends StatelessWidget {
  const FoodInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnWithGap(
      gap: 10,
      children: [
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.location_pin),
            labelText: "Location",
            hintText: "Enter pick-up location",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.restaurant),
            labelText: "Restuarant",
            hintText: "Enter restuarant name",
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            prefixIcon: Icon(Icons.local_pizza),
            labelText: "Food type",
            hintText: "Enter type of food",
          ),
        ),
      ],
    );
  }
}