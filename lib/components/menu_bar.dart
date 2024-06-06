import 'package:flutter/material.dart';

PreferredSizeWidget menuBar(BuildContext context) {
  Color bgColor = Theme.of(context).colorScheme.primary;
  return AppBar(
    leading: HomeButton(),
    title: DummyLogo(),
    backgroundColor: bgColor,
  );
}

class DummyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.onPrimary;
    return Text(
      "Dummy Logo",
      selectionColor: color,
    );
  }
}

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.onPrimary;
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: IconButton(
        onPressed: () {},
        tooltip: 'Homepage',
        icon: Icon(
          Icons.home,
          size: 30,
        ),
      ),
    );
  }
}
