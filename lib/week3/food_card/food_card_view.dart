import 'package:flutter/material.dart';
import 'package:flutterlearn/week3/core/localize/application_string.dart';
import 'package:flutterlearn/week3/core/widgets/wrap/icon_text.dart';
import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Spacer(), //bosluk vermeye yarar.
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: foodItemList.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: Image.asset(foodItemList[index].image),
                ),
              ),
            ),
          ),
          Spacer(),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(child: buildSubTotal()),
                  Expanded(child: buildDelivery()),
                  Expanded(flex: 2, child: buildRowTotal()),
                  Spacer(),
                ],
              )),
          Expanded(child: buildElevatedCheckoutMethod(context)),
          Spacer(),
        ],
      ),
    );
  }

  Row buildSubTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [buildSubTitle(applicationStrings.subTotal), Text('20')],
    );
  }

  Row buildDelivery() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [buildSubTitle(applicationStrings.delivery), Text('text')],
    );
  }

  Row buildRowTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          applicationStrings.total,
          style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          '9.30',
          style: textTheme.headline5,
        )
      ],
    );
  }

  Text buildSubTitle(String title) {
    return Text(
      title,
      style: textTheme.bodyText1!.copyWith(color: colorSchema.onPrimary),
    );
  }

  ElevatedButton buildElevatedCheckoutMethod(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).accentColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: () {},
      child: Center(
        child: buildWrapContext(),
      ),
    );
  }

  Widget buildWrapContext() {
    return IconTextWidgets(
      title: applicationStrings.checkOut,
      icon: Icons.arrow_right_alt_rounded,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(ApplicationStrings.instance.cardTitle,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              )),
    );
  }
}
