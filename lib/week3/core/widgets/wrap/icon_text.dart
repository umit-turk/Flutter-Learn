import 'package:flutter/material.dart';

class IconTextWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  const IconTextWidgets({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        buildIconWidget(icon: icon),
        buildTextWidget(title: title),
      ],
    );
  }
}

class buildIconWidget extends StatelessWidget {
  const buildIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}

class buildTextWidget extends StatelessWidget {
  const buildTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold),
    );
  }
}
