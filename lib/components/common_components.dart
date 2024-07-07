import 'package:flutter/material.dart';

class CardHeadingText extends StatelessWidget {
  const CardHeadingText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Theme.of(context).colorScheme.secondary));
  }
}

class FilledButtonText extends StatelessWidget {
  const FilledButtonText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
    );
  }
}

class ColumnWithGap extends StatelessWidget {
  const ColumnWithGap({
    super.key,
    required this.gap,
    required this.children,
  });

  final double gap;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) return const Column();

    List<Widget> toBeRendered = [];
    for(var i=0;i < children.length - 1; i++)
    {
      toBeRendered.add(children[i]);
      toBeRendered.add(SizedBox(height: gap,));
    }
    toBeRendered.add(children.last);

    return Column(children: toBeRendered);
  }
}
