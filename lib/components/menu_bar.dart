import 'package:flutter/material.dart';

PreferredSizeWidget menuBar(BuildContext context) {
  Color bgColor = Theme.of(context).colorScheme.primary;
  return AppBar(
    leading: HomeButton(),
    title: DummyLogo(),
    backgroundColor: bgColor,
    centerTitle: true,
    leadingWidth: 70,
    toolbarHeight: 100,
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
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        tooltip: 'Homepage',
        icon: Icon(
          Icons.home,
          size: 40,
        ),
      ),
    );
  }
}
