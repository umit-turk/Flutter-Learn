import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final appBarTitle = 'Instagram';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.wallpaper),
            Text(
              appBarTitle,
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
