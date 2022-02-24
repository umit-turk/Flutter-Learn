import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final _appBarTitle = 'Instagram';

  final _randomImageUrl = "https://picsum.photos/id/237/200/300";

  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: Column(children: [
        Expanded(flex: 5, child: buildListViewTop(context)),
        Expanded(
          flex: 1,
          //context her widgetin kendi statesi
          child: buildListView(),
        ),
        Expanded(
          flex: 1,
          child: buildDismissableButtonCard(),
        )
      ]),
    );
  }

  AppBar MainAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      actions: [buildIconButtonFav(context)],
      title: buildAppBarTitle(context),
    );
  }

  IconButton buildIconButtonFav(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => Column());
        },
        icon: Icon(Icons.favorite));
  }

  Row buildAppBarTitle(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.wallpaper),
        BuildTextAppBar(context),
      ],
    );
  }

  Text BuildTextAppBar(BuildContext context) {
    return Text(
      _appBarTitle,
      style: Theme.of(context)
          .primaryTextTheme
          .headline4!
          .copyWith(color: Colors.white),
    );
  }

  ListView buildListViewTop(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1, // ekranımın %10 dur
          width: 500,
          color: randomColor,
        ),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: 100,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return BuildListViewCard(context, index);
      },
    );
  }

  SizedBox BuildListViewCard(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_randomImageUrl),
          ), //leading soluna yazmak için kullanıyoruz
          title: Text('$_appBarTitle $index'),
          trailing:
              Icon(Icons.arrow_right_alt), //sagına yazmak icin kullanıyoruz
        ),
      ),
    );
  }

  Dismissible buildDismissableButtonCard() {
    return Dismissible(
      key: UniqueKey(),
      background: Container(color: Colors.red),
      secondaryBackground: Container(color: Colors.red),
      child: Container(
        color: Colors.pink,
      ),
    );
  }
}
