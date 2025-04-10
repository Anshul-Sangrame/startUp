import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startup/components/service_displayer.dart';
import '../states/state.dart';

PreferredSizeWidget menuBar(BuildContext context) {
  Color shadowColor = Theme.of(context).shadowColor;
  return AppBar(
    leading: HomeButton(),
    title: DummyLogo(),
    actions: [
      const ProfileLogo(),
    ],
    surfaceTintColor: null,
    shadowColor: shadowColor,
    scrolledUnderElevation: 10,
    elevation: 5,
    // surfaceTintColor: bgColor,
    titleTextStyle: Theme.of(context).textTheme.headlineLarge,
    iconTheme: Theme.of(context).iconTheme,
    centerTitle: true,
    // leadingWidth: 70,
    // toolbarHeight: 100,
  );
}

class ProfileLogo extends StatelessWidget {
  const ProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.person_4_outlined,
          size: 40,
        )
        );
  }
}

class DummyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.onPrimary;
    return Text(
      "Logo",
      // style: ,
      selectionColor: color,
    );
  }
}

class HomeButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return IconButton(
      onPressed: () {
        ref.read(contentProvider.notifier).setContent(ServiceCardList());
      },
      // tooltip: 'Homepage',
      icon: const Icon(
        Icons.home_outlined,
        size: 40,
      ),
    );
  }
}
