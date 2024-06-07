import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startup/components/service_displayer.dart';
import '../states/state.dart';

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

class HomeButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color color = Theme.of(context).colorScheme.onPrimary;
    return Container(
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {ref.read(contentProvider.notifier).setContent(ServiceCardList());},
        tooltip: 'Homepage',
        icon: Icon(
          Icons.home,
          size: 40,
        ),
      ),
    );
  }
}
